<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




  <html>
<head>
  <title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>










 <form action="manage_file_process.jsp" method="post" enctype="multipart/form-data">

<div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">วันที่ประกาศ</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" id="news_date" name="news_date" required >
        </div>
      </div>


      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">หัวข้อข่าว</label>
        <div class="col-sm-4">
          <input type="text" name="news_topic" class="form-control" id="news_topic"   placeholder="หัวข้อข่าว" required>
        </div>
      </div>

      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">แหล่งที่มา</label>
        <div class="col-sm-4">
          <input type="text" name="news_source" class="form-control" id="news_source"   placeholder="แหล่งที่มา" required>
        </div>
      </div>

      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">URL</label>
        <div class="col-sm-4">
          <input type="text" name="news_url" class="form-control" id="news_url"   placeholder="URL" required>
        </div>
      </div>


<input type="file" id="news_id" name="news_id" />
<input type="submit">
</form>


</body>
</html>