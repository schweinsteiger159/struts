# struts
load json
<ol>
  <li>Khi load server thì sẽ vào trang index.jsp (được config trong web.xml) (url = “http://localhost:8080/Struts2JsonValidation/”)     </li>
  <li>Khi trang được load lên, khi ấn button submit sẽ thực hiện đoạn script, trong script có đoạn ajax gọi tới url post-jon.</li>
  <li>Trong struts.xml, sẽ gọi tới action name = “post-json” class = “actions.MyAction” (sẽ thực hiện action trong MyAction.java)</li>
  <li>Tại MyAction.java sẽ thực hiện method execute(). Khi thành công thì sẽ return “SUCCESS”</li>
  <li>Sau đó nó quay về struts.xml và reponse json về jsp.</li>
</ol>

Login đơn giản
<ol>
  <li>Click thẻ link login hay gõ url = “http://localhost:8080/Struts2JsonValidation/loginForm” sẽ dẫn tới trang login</li>
  <li>Nhập đầy đủ thông tin username và password</li>
  <li>Sẽ vào action với name là “post” trong struts.xml và sẽ thục hiện method execute trong LoginAction.java</li>
  <li>Trong LoginAction.java sẽ thực hiện kiểm tra username và passoword. Nếu đúng thì return “success” còn sai thì return “error” về struts.xml</li>
  <li>Tại struts.xml, nếu return “success” thì sẽ chuyển qua trang UserInfo, còn nếu return “error” thì sẽ hiện thông báo “Invalid Username/Password. Please try again.”</li>
</ol>

Danh sách khách hàng
<ol>
  <li>Truy cập vào đường dẫn url = “http://localhost:8080/Struts2JsonValidation/listCustomer” sẽ được dẫn tới trang customer.jsp (được cấu hình trong struts.xml)</li>
  <li>Khi vào tới trang customer.jsp, ajax sẽ gọi tới Action có name = “getAll” trong struts.xml.</li>
  <li>Tại action này, thì nó sẽ gọi tới method getAll() được tạo trong CustomerAction. Method này thì trả về danh sách customer và trả về action đó</li>
  <li>Tại Action này sẽ trả về jsp tương ứng dưới dạng json</li>
  <li>Bên jsp sẽ lấy dữ liệu json đó điền thông tin vào chỗ tương ứng</li>
</ol>
