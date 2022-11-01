<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>테스트 모델</title>
    <script src="https://www.gstatic.com/charts/loader.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="js/doChart.js" type="text/javascript">
        // getChartData
        // loadChart
    </script>
    <script src="js/dateUtil.js" type="text/javascript">
        // date formatter
    </script>

    <script type="text/javascript">
        // 초기 로딩시 보여줄 차트
        $(document).ready(function () {
            getStockData('코스피');
        });
    </script>


</head>

<body>
<h1>테스트</h1>
<div style="text-align: right">
    <a href="chart/searchStockData" target="_self">종목 가져오기 페이지</a>
    <br>
    <a href="chart/viewStockChart" target="_self">차트 페이지</a>
</div>

<div style="text-align: center;">

    <div style="display:inline-flex;text-align: center;width: 47%;">
        <div style="width: 100%;">
            <div>
                <h2>차트 부분</h2>
            </div>

            <%--    ajax 적용 방식 차트--%>
            <div>
                <div style="text-align: center;">
                    <div id="chart_div" style="text-align: center; width: 100%; height: 500px;"></div>
                    <label for="stockName">종목명 :
                        <input type="text" id="stockName"/>
                    </label>
                    <button onclick="getStockData();">전송</button>
                    <br/>
                    <a href="/chart/searchStockData" target="_blank">데이터 가져오기</a>
                </div>
            </div>

        </div>
    </div>


    <div style="display:inline-flex;text-align: center;width: 47%;">
        <div style="width: 100%;">
            <div>
                <h2>뉴스 부분</h2>
            </div>
            <div>
                <form action="news/getNewsData" method="get" target="fNews">
                    키워드 : <input type="text" name="name">
                    날짜 : <input type="text" name="date">
                    <input type="submit">
                </form>

                <div>
                    <%--    기존 ifrmae 뉴스 표시 영역
                            기본값 : 현재 날짜와 증시로 뉴스를 검색--%>
                    <%-- <iframe name="fNews" src="news/getNewsData?name=증시&date=<%=request.getAttribute("nowDate")%>"
                             width="100%"
                             height="1200px"></iframe>--%>
                </div>
                <div>
                    <%--    ajax 적용 뉴스 표시--%>
                </div>
            </div>
        </div>
    </div>

</div>


</body>
</html>