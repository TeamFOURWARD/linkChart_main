package com.fourward.linkchart.controller;

import com.fourward.linkchart.service.INewsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller()
public class NewsController {

    @Resource(name = "NewsService")
    private INewsService NewsService;

    /**
     * @param request 종목명, 날짜
     * @param model view 에 전달할 news 데이터(List<NewsDTO>)
     * @return view 객체
     */
    @GetMapping(value = "/news/viewNewsContents")
    public String getNewsContents(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + "getNewsContents Start");
        log.info(this.getClass().getName() + "getNewsContents End");

        return "viewStockChart/";
    }
}
