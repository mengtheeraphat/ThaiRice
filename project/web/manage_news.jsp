<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




  <html>
<head>
  <title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>

 <form id='news_id' name='news_id' action="manage_news_process.jsp" method="get">

  <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">หัวข้อข่าว</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="news_topic" name="news_topic"  required>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">แหล่งที่มา</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="news_source" name="news_source"  required>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">URL</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="news_url" name="news_url"  required>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">วันที่ประกาศ</label>
      <div class="col-sm-3">
        <input type="date" class="form-control" id="news_date" name="news_date"  required>
      </div>
    </div>
<!-- <input type="file" id="lnk_profile" name="lnk_profile" /> -->
<input type="submit">
</form>

</body>
</html>