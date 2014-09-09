package com.shishuo.cms.service;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class ConfigServiceTest {

	@Autowired
	private ConfigService configService;

	@Test
	public void testAddConfig() {
		assertEquals("h", configService.addConfig("h", "ew").getKey());
	}

	// @Test
	// public void testGetConfigPage() {
	// PageVo<Config> pageVo = configService.getConfigPage(1);
	// assertNotNull(pageVo);
	// assertEquals(6, pageVo.getList().size());
	// }

	
	@Test
	public void testUpdagteConfigByKey() {
		assertEquals("h", configService.updagteConfigByKey("h", "ad").getKey());
	}
	@Test
	public void testDeleteConfigByKey() {
		assertEquals(1, configService.deleteConfigByKey("h"));
	}

}
