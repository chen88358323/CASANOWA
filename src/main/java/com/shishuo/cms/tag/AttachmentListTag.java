/*
 *	Copyright © 2013 Changsha Shishuo Network Technology Co., Ltd. All rights reserved.
 *	长沙市师说网络科技有限公司 版权所有
 *	http://www.shishuo.com
 */

package com.shishuo.cms.tag;

import static freemarker.template.ObjectWrapper.DEFAULT_WRAPPER;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shishuo.cms.constant.AttachmentConstant;
import com.shishuo.cms.entity.vo.AttachmentVo;
import com.shishuo.cms.service.AttachmentService;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * folder标签
 * 
 * @author lqq
 *  
 */
@Service
public class AttachmentListTag implements TemplateDirectiveModel {
	private static Logger logger = Logger.getLogger ( AttachmentListTag.class.getName () ) ;
	@Autowired
	private AttachmentService attachmentService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {

		// 获取页面的参数
		Integer kindh1Id = Integer.parseInt(params.get("kindh1Id").toString());
		
		
		AttachmentConstant.Kind kind = AttachmentConstant.Kind.valueOf(params
				.get("kind").toString());

		// 获得首页滚动图片
		List<AttachmentVo> headlist = attachmentService.getAttachmentListByKindId(
				kindh1Id, kind, AttachmentConstant.Status.display);
		env.setVariable("tag_attachment_list", DEFAULT_WRAPPER.wrap(headlist));
		logger.info("***************************"+"加载首页滚动图片");
		
		//获取二级图片 首页下方
				List<AttachmentVo> head2list2 = attachmentService.getAttachmentListByKindId(
						15, kind, AttachmentConstant.Status.display);
		env.setVariable("tag_head2_list", DEFAULT_WRAPPER.wrap(head2list2));
		
		List<AttachmentVo> index_right_hotattention_list = attachmentService.getAttachmentListByKindId(
				16, kind, AttachmentConstant.Status.display);
env.setVariable("index_right_hotattention_list", DEFAULT_WRAPPER.wrap(index_right_hotattention_list));
		body.render(env.getOut());
	}

}
