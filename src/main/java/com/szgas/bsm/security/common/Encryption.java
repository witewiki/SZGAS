package com.szgas.bsm.security.common;

import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.encoding.PasswordEncoder;

public class Encryption implements PasswordEncoder {
	

	protected static Logger logger = Logger.getLogger("controller");
	
	// 通过 "PBKDF2WithHmacSHA1" 来实现"PBKDF2"算法
	public static String generateStorngPasswordHash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
		int iterations = 10000;// 迭代次数作为参数来确定 Hash
		// 函数将变的有多慢，随着日后计算能力的提高，可以逐步增大来使之与计算解密能力达到平衡
		char[] chars = password.toCharArray();
		byte[] salt = getSalt().getBytes();

		PBEKeySpec spec = new PBEKeySpec(chars, salt, iterations, 64 * 8);
		SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
		byte[] hash = skf.generateSecret(spec).getEncoded();
		return iterations + ":" + toHex(salt) + ":" + toHex(hash);
	}

	private static String getSalt() throws NoSuchAlgorithmException {
		SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
		byte[] salt = new byte[16];
		sr.nextBytes(salt);
		return salt.toString();
	}

	private static String toHex(byte[] array) throws NoSuchAlgorithmException {
		BigInteger bi = new BigInteger(1, array);
		String hex = bi.toString(16);
		int paddingLength = (array.length * 2) - hex.length();
		if (paddingLength > 0) {
			return String.format("%0" + paddingLength + "d", 0) + hex;
		} else {
			return hex;
		}
	}

	// 当重新回来时，需要提供登录密码验证的方法实现：
	public static boolean validatePassword(String originalPassword, String storedPassword){
		try{
			String[] parts = storedPassword.split(":");
			int iterations = Integer.parseInt(parts[0]);
			byte[] salt = fromHex(parts[1]);
			byte[] hash = fromHex(parts[2]);

			PBEKeySpec spec = new PBEKeySpec(originalPassword.toCharArray(), salt, iterations, hash.length * 8);
			SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
			byte[] testHash = skf.generateSecret(spec).getEncoded();

			int diff = hash.length ^ testHash.length;
			for (int i = 0; i < hash.length && i < testHash.length; i++) {
				diff |= hash[i] ^ testHash[i];
			}
			return diff == 0;
		}catch (Exception e) {
			return false;
		}
	}

	private static byte[] fromHex(String hex) throws NoSuchAlgorithmException {
		byte[] bytes = new byte[hex.length() / 2];
		for (int i = 0; i < bytes.length; i++) {
			bytes[i] = (byte) Integer.parseInt(hex.substring(2 * i, 2 * i + 2), 16);
		}
		return bytes;
	}

	public static void main(String[] args) throws Exception {
		String originalPassword = "123456";
		long lStart = System.currentTimeMillis();
		String generatedSecuredPasswordHash = generateStorngPasswordHash(originalPassword);
		long lUseTime = System.currentTimeMillis() - lStart;
		System.out.println("加密耗时：" + lUseTime + "毫秒");
		System.out.println(generatedSecuredPasswordHash);

		lStart = System.currentTimeMillis();
		boolean matched = validatePassword("123456", generatedSecuredPasswordHash);
		lUseTime = System.currentTimeMillis() - lStart;
		System.out.println("解密耗时：" + lUseTime + "毫秒");
		System.out.println(matched);
	}

	@Override
	public String encodePassword(String rawPass, Object salt)
			throws DataAccessException {
		String generatedSecuredPasswordHash = null;
		try {
			String originalPassword = salt.toString();
			generatedSecuredPasswordHash = generateStorngPasswordHash(originalPassword);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			e.printStackTrace();
		}
		return generatedSecuredPasswordHash;
		
	}

	/*@Override
	public boolean isPasswordValid(String encPass, String rawPass, Object salt)
			throws DataAccessException {
		String cKey = "123456";
		logger.debug("isPasswordValid:"+encPass.equals(encodePassword(rawPass, cKey)));
		return encPass.toLowerCase().equals(encodePassword(rawPass, cKey).toLowerCase());
	}
	*/
	@Override
	public boolean isPasswordValid(String encPass, String rawPass, Object salt)
			throws DataAccessException {
		boolean matched = validatePassword(rawPass, encPass);
		logger.debug("isPasswordValid:"+matched);
		return matched;
	}
}
