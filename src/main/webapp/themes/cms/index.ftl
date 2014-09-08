<#include "header.ftl">
<style>
</style>
<!--container start-->
<div class="container">
	<div class="row">
		<ul class="bxslider_ad">
			<@shishuocms_attachment_list kindh1Id="11" kind="folder"> <#list
			tag_attachment_list as attachment>
			<li><#if attachment.link==""> <a href="javascript:void(0);">
					<#else> <a href="${attachment.link}"> </#if> <img
						style="width: 1440px; height: 420px;"
						src="${basePath}/${attachment.path}"></a></li> </#list>
			</@shishuocms_attachment_list>
		</ul>
		<ul class="spic">
			<!-- 营养工作室  | 摄影工作室  | 母乳喂养工作室 | 导乐分娩工作室-->
			<#list tag_head2_list as atthead2>
			<li class="mr10"><#if atthead2.link==""> <a href="#"
				target="_blank"> <#else> <a href="${atthead2.link}"
					target="_blank"> </#if> <img src="${basePath}/${atthead2.path}"></a></li>
			</#list>
		</ul>
	</div>
</div>


<!--div id="content">
  <div id="content_l" class="fll">
    <div class="title">
    	<img src="${basePath}/upload/index/index_fongtai.png">
    	<span class="mr20">
    	<img src="${basePath}/upload/index/index_arrow.png" align="absmiddle"> 
    	<a href="http://www.forkiss.com.cn/news.asp" class="r">更多新闻</a></span>
    </div>
	<div id="index_news">
    <img src="${basePath}/upload/index/index_dongtai_puc.jpg" class="flr ml30" width="253" height="145/">
      <h1>迷人的准爸妈双人瑜伽，值得探索……</h1>
      七夕当天，一群可爱的准爸妈携肚中Baby选择双人瑜伽练习，一家三口感受不同寻常的运动方式。虽有点受虐，但其带来的好处多多！希望准爸妈要坚持！ ...  
      <a href="http://www.forkiss.com.cn/news-detail.asp?id=2471" class="r underline">&gt;详细内容</a>
      <ul class="inewsUl">
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2459">大萌子《时间都去哪儿了》出书了！</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2467">叶一茜作客FORKISS录制《加油妈妈</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2469">2014分娩球导师培训毕业啦</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2451">FORKISS教学总监郭涛参加北京电视</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2449">FORKISS高级导师杨海英接受央视专</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2450">【FORKISS精彩会员活动分享】幸福</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2447">【FORKISS活动预告】家盒子快乐之</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2446">妈咪快乐一天 有趣的孕期分娩球操</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2443">央视少儿频道《宝贝星计划》第二期FOR</a></li>
        <li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2442">FORKISS与新世纪儿童医院联合举办</a></li>
      </ul>
     <div class="clear"></div>
	</div>	
	<div class="clear mb20"></div>
    <div id="con">  
	<ul id="tags">  
  <li class="selectTag"><a onmouseover="selectTag('c0',this)" href="javascript:void(0)">导师团队</a> </li>  
  <li class=""><a onmouseover="selectTag('c1',this)" href="javascript:void(0)">会所环境</a> </li>  
  <li class=""><a onmouseover="selectTag('c2',this)" href="javascript:void(0)">会所荣誉</a> </li>  
  <li class=""><a onmouseover="selectTag('c3',this)" href="javascript:void(0)">明星会员</a> </li>  
    <li class=""><a onmouseover="selectTag('c4',this)" href="javascript:void(0)">媒体报道</a> </li>  
</ul>  
	<div id="tagContent">  
		<div class="tagContent selectTag" id="c0" style="display: block;"-->
<!--内容区域start-->
<div class="clear"></div>
<div id="content">
	<div id="content_l" class="fll">
		<div class="title">
			<img src="${basePath}/upload/index/index_fongtai.png"> <span
				class="mr20"> <img
				src="${basePath}/upload/index/index_arrow.png" align="absmiddle">
				<a href="http://www.forkiss.com.cn/news.asp" class="r">更多新闻</a></span>
		</div>
		<div id="index_news">



			<img src="${basePath}/upload/index/index_dongtai_pic.jpg"
				class="flr ml30" width="253" height="145/">
			<h1>迷人的准爸妈双人瑜伽，值得探索……</h1>
			七夕当天，一群可爱的准爸妈携肚中Baby选择双人瑜伽练习，一家三口感受不同寻常的运动方式。虽有点受虐，但其带来的好处多多！希望准爸妈要坚持！
			... <a href="http://www.forkiss.com.cn/news-detail.asp?id=2471"
				class="r underline">&gt;详细内容</a>
			<ul class="inewsUl">

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2459">大萌子《时间都去哪儿了》出书了！</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2467">叶一茜作客FORKISS录制《加油妈妈</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2469">2014分娩球导师培训毕业啦</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2451">FORKISS教学总监郭涛参加北京电视</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2449">FORKISS高级导师杨海英接受央视专</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2450">【FORKISS精彩会员活动分享】幸福</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2447">【FORKISS活动预告】家盒子快乐之</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2446">妈咪快乐一天
						有趣的孕期分娩球操</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2443">央视少儿频道《宝贝星计划》第二期FOR</a></li>

				<li><a href="http://www.forkiss.com.cn/news-detail.asp?id=2442">FORKISS与新世纪儿童医院联合举办</a></li>

			</ul>
			<div class="clear"></div>
		</div>
		<!--TAB标签切换START-->

		<div class="clear mb20"></div>
		<div id="con">
			<ul id="tags">
				<li class="selectTag"><a onmouseover="selectTag('c0',this)"
					href="javascript:void(0)">导师团队</a></li>
				<li class=""><a onmouseover="selectTag('c1',this)"
					href="javascript:void(0)">会所环境</a></li>
				<li class=""><a onmouseover="selectTag('c2',this)"
					href="javascript:void(0)">会所荣誉</a></li>
				<li class=""><a onmouseover="selectTag('c3',this)"
					href="javascript:void(0)">明星会员</a></li>
				<li class=""><a onmouseover="selectTag('c4',this)"
					href="javascript:void(0)">媒体报道</a></li>
			</ul>
			<div id="tagContent">
				<div class="tagContent selectTag" id="c0" style="display: block;">
					<!--导师start-->
					<div style="padding: 10px;">
						<div style="text-align: center;">
							<a href="http://hxw0020965.chinaw3.com/teacher.asp"
								target="_blank"></a><a
								href="http://www.forkiss.com.cn/teacher.asp" target="_blank"><img
								src="${basePath}/upload/index/20140621104427772777.png"
								alt=""></a><span style="line-height: 1.5;"></span>
						</div>
					</div>
					<!--导师end-->
				</div>

				<div class="tagContent2" id="c1" style="display: none;">
					<div class="content">
						<section class="examples">
							<div class="carousel">
								<div class="previews">

									<div class="preview active">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS, forkiss环境照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS, forkiss环境照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140609151633846.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS,,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS,,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140609153907176.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title=",  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt=",  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703171541740.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS室内照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS室内照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173131745.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140609154317745.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title=", http://www.forkiss.com.cn/index.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt=", http://www.forkiss.com.cn/index.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140627162420252.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS室内照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS室内照,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703172603571.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173437933.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173555169.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173746596.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173845550.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="/admin_rsun360/why_hshj_action.asp"
											title="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											target="_blank"><img
											alt="FORKISS道具,  /admin_rsun360/why_hshj_action.asp"
											src="${basePath}/upload/index/20140703173946446.jpg" height="384"
											width="716"></a>
									</div>

								</div>
								<div class="controls">
									<a class="next" data-action="next" href="#">›</a> <a
										class="prev" data-action="prev" href="#">‹</a>
								</div>
							</div>
						</section>
					</div>





				</div>
				<div class="tagContent" id="c2" style="display: none;">
					<div style="padding: 10px;">
						<p align="center">
							<a href="/about.asp?id=3#top" target="_blank"></a><a
								href="http://hxw0020965.chinaw3.com/about.asp?id=3#top"
								target="_blank"></a><a
								href="http://www.forkiss.com.cn/about.asp?id=3#top"
								target="_blank"><img
								src="/admin_rsun360/editor/attached/image/20140621/20140621111778177817.JPG"
								alt=""></a>
						</p>
					</div>
				</div>
				<!--明星会员start-->
				<div class="tagContent" id="c3" style="display: none;">
					<div class="content">
						<section class="examples">
							<div class="carousel">
								<div class="previews">

									<div class="preview active">
										<a href="http://www.forkiss.com.cn/share.asp" title="申雪、赵宏博"
											target="_blank"><img alt="申雪、赵宏博"
											src="${basePath}/upload/index/20140628153128272.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="http://www.forkiss.com.cn/share.asp" title="濮方"
											target="_blank"><img alt="濮方"
											src="${basePath}/upload/index/20140703164336565.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="http://www.forkiss.com.cn/share.asp" title="刘奕君与妻子"
											target="_blank"><img alt="刘奕君与妻子"
											src="${basePath}/upload/index/20140630175649067.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="http://www.forkiss.com.cn/share.asp" title="代乐乐"
											target="_blank"><img alt="代乐乐"
											src="${basePath}/upload/index/20140630175615794.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="http://www.forkiss.com.cn/share.asp" title="毕文静"
											target="_blank"><img alt="毕文静"
											src="${basePath}/upload/index/20140628162525518.jpg" height="384"
											width="716"></a>
									</div>

									<div class="preview">
										<a href="http://www.forkiss.com.cn/share.asp" title="大萌子"
											target="_blank"><img alt="大萌子"
											src="${basePath}/upload/index/20140607152921889.jpg" height="384"
											width="716"></a>
									</div>

								</div>
								<div class="controls">
									<a class="next" data-action="next" href="#">›</a> <a
										class="prev" data-action="prev" href="#">‹</a>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!--明星会员end -->
				<!--媒体报道start-->
				<div class="tagContent" id="c4" style="display: none;">

					<ul class="ul_mtbd">

						<li><a href="mtbd-detail.asp?id=17">FORKISS高级导师郭涛受邀央视接受访问</a>
							<span>2014-6-9 </span></li>

						<li><a href="mtbd-detail.asp?id=21">BTV青年频道来俱乐部拍摄外景</a> <span>2014-7-1
						</span></li>

						<li><a href="mtbd-detail.asp?id=20">北京电视台节目录制系列报道</a> <span>2014-7-1
						</span></li>

						<li><a href="mtbd-detail.asp?id=19">央视少儿频道《宝贝星计划》第二期FORKISS拍摄</a>
							<span>2014-7-1 </span></li>

						<li><a href="mtbd-detail.asp?id=18">FORKISS高级导师杨海英接受央视专访</a>
							<span>2014-7-1 </span></li>


					</ul>




					<div class="mtbd">
						<img src="upload/btv.png" height="30/">
					</div>

					<div class="mtbd">
						<img src="upload/cctv.png" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806152928662.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806153122137.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806153436302.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806153636210.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806153849972.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154045144.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154206838.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154334080.png" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154452305.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154637964.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806154745842.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806155008205.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806155329389.jpg" height="30/">
					</div>

					<div class="mtbd">
						<img src="${basePath}/upload/index/20140806155528600.jpg" height="30/">
					</div>



				</div>
				<!--媒体报道end-->

			</div>
		</div>

		<script type="text/javascript">
			function selectTag(showContent, selfObj) {
				// 操作标签  
				var tag = document.getElementById("tags").getElementsByTagName(
						"li");
				var taglength = tag.length;
				for (i = 0; i < taglength; i++) {
					tag[i].className = "";
				}
				selfObj.parentNode.className = "selectTag";
				// 操作内容  
				for (i = 0; j = document.getElementById("c" + i); i++) {
					j.style.display = "none";
				}
				document.getElementById(showContent).style.display = "block";

			}
		</script>
		<!--TAB标签切换START-->
	</div>
	<div id="content_r" class="flr">
		<div class="title">
			<img src="${basePath}/upload/index/index_hot.png">
		</div>
		<dl>
			<#list index_right_hotattention_list as irhl>
			<dt>
			<#if irhl.link==""> <a href="javascript:void(0);" title="点击了解详情">
					<#else> <a href="${irhl.link}" title="点击了解详情"> </#if> <img
						src="${basePath}/${irhl.path}"></a>
			</dt>
			</#list>
			
			<!--  img src="${basePath}/upload/index/index_pic1.png"-->
		</dl>
		<div class="title mt10">
			<a href="http://www.forkiss.com.cn/video.asp" title="forkiss精彩视频"><img
				src="${basePath}/upload/index/index_video.png"></a>
		</div>
		<div id="video" class="mt10">
			<a href="http://www.forkiss.com.cn/video-detail.asp?id=1"><img
				src="${basePath}/upload/index/20140702155707773.jpg"
				title="FORKISS教学理念分享"> </a>
		</div>
		<a href="http://www.forkiss.com.cn/video-detail.asp?id=1"> </a>
	</div>
	<a href="http://www.forkiss.com.cn/video-detail.asp?id=1">
		<div class="clear"></div>
	</a>
</div>
<a href="http://www.forkiss.com.cn/video-detail.asp?id=1"> <!--内容区域end-->
</a>

<#--<@shishuocms_attachment_list kindh2Id="12" kind="folder">
</@shishuocms_attachment_list>-->

<!--feature start-->

<!--
            <div class="text-center feature-head">
                <h1>欢迎来到"师说CMS"cc</h1>
                <p>一款划时代的产品就这样静悄悄的诞生了。</p>
            </div>
            <div class="col-lg-4 col-sm-4">
                <section>
                    <div class="f-box">
                        <i class=" icon-desktop"></i>
                        <h2>Java语言</h2>
                    </div>
                    <p class="f-text">使用Java语言的CMS，能够以最低的成本、最少的人力投入在最短的时间内架设一个功能齐全、性能稳定、规模庞大并易于维护的网站平台。</p>
                </section>
            </div>
            <div class="col-lg-4 col-sm-4">
                <section>
                    <div class="f-box active">
                        <i class=" icon-code"></i>
                        <h2>免费开源</h2>
                    </div>
                    <p class="f-text">师说CMS是开源免费的一款国产的开源项目管理软件，软件本身我们是不收取任何费用的，也不限制用户进行商业用途，方便学习，以及第二次开发。</p>
                </section>
            </div>
            <div class="col-lg-4 col-sm-4">
                <section>
                    <div class="f-box">
                        <i class="icon-gears"></i>
                        <h2>用户自定义</h2>
                    </div>
                    <p class="f-text">具有用户自定义模板功能，用户可以选择系统默认的模板，也可以根据自己的喜好，制作出独属于自己的模板，秀出不一样的风采，亮出自己的特色。</p>
                </section>
            </div>
            -->
<!--feature end-->
<!--div class="row">
            <quote start
            <div class="quote">
                <div class="col-lg-9 col-sm-9">
                    <div class="quote-info">
                        <h1>代码下载</h1>
                        <p>源代码毫无保留，自由下载，并且提供技术支持服务。(<a href="http://git.oschina.net/shishuo/CMS" style="color:#9EB3C4;" target="_blank">代码托管在开源中国</a>)</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3">
                    <a href="http://git.oschina.net/shishuo/CMS/repository/archive?ref=master" target="_blank" class="btn btn-danger purchase-btn">下载(DOWNLOAD)</a>
                </div>
            </div>
            quote end>
        </div-->
<!--container end-->
<script>
$(function(){
	 $('.bxslider_ad').bxSlider({
	 	auto:true,
	 	pager:false
	 });
});
  
function selectTag(showContent,selfObj){  
 // 操作标签  
 var tag = document.getElementById("tags").getElementsByTagName("li");  
 var taglength = tag.length;  
 for(i=0; i<taglength; i++){  
  tag[i].className = "";  
 }  
 selfObj.parentNode.className = "selectTag";  
 // 操作内容  
 for(i=0; j=document.getElementById("c"+i); i++){  
  j.style.display = "none";  
 }  
 document.getElementById(showContent).style.display = "block";  

}  

</script>
<#include "footer.ftl">
