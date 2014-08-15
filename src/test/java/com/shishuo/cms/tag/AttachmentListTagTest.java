package com.shishuo.cms.tag;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shishuo.cms.constant.AttachmentConstant;
import com.shishuo.cms.entity.vo.AttachmentVo;
import com.shishuo.cms.service.AttachmentService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class AttachmentListTagTest {
	@Autowired
	private AttachmentService attachmentService;
	@Test
	public void testHead2Pic() {
		AttachmentConstant.Kind kind = AttachmentConstant.Kind.valueOf("folder");

		List<AttachmentVo> list2 = attachmentService.getAttachmentListByKindId(
				12, kind, AttachmentConstant.Status.display);
		assert(list2!=null&&list2.size()>0);
	}
}
