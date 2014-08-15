package com.shishuo.cms;

import static org.junit.Assert.fail;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shishuo.cms.exception.AuthException;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class AuthUtil {

	public static void main (String asd[]){
		
	}
	
	@Test
	public void test() {
		try {
			System.out.println(getPassword("4a3981e0b096eb5a273f07f2b82b7eab","cmstest@shishuo.com"));
		} catch (AuthException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 生产密文密码
	 * 
	 * @param password
	 *            明文密码
	 * @param email
	 *            邮箱
	 * @return
	 * @throws AuthException
	 */
	public static String getPassword(String password, String email)
			throws AuthException {
		if (StringUtils.isBlank(password) || StringUtils.isBlank(email)
				|| StringUtils.isBlank(email)) {
			throw new AuthException("值不能为空");
		}
		return DigestUtils.md5Hex(password + email).toLowerCase();
	}

}
