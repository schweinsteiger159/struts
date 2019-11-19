# struts
load json
<ol>
  <li>Khi load server thì sẽ vào trang index.jsp (được config trong web.xml) (url = “http://localhost:8080/Struts2JsonValidation/”)     </li>
  <li>Khi trang được load lên, khi ấn button submit sẽ thực hiện đoạn script, trong script có đoạn ajax gọi tới url post-jon.</li>
  <li>Trong struts.xml, sẽ gọi tới action name = “post-json” class = “actions.MyAction” (sẽ thực hiện action trong MyAction.java)</li>
  <li>Tại MyAction.java sẽ thực hiện method execute(). Khi thành công thì sẽ return “SUCCESS”</li>
  <li>Sau đó nó quay về struts.xml và reponse json về jsp.</li>
</ol>
