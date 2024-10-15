<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Murach Survey</title>
  <link rel="stylesheet" href="style.css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value='/template/css/style.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/css/header.css' />" />
  <style>
    .checkbox-group .checkbox-item {
      display: inline-flex; /* Hiển thị thẻ input và label theo hàng ngang */
      align-items: center; /* Căn chỉnh dọc giữa input và label */
      margin-bottom: 10px; /* Khoảng cách giữa các mục checkbox */
    }

    .checkbox-group label {
      font-size: 14px; /* Kích thước chữ của label nhỏ hơn */
      font-weight: normal; /* Bỏ in đậm */
      margin-left: 5px; /* Khoảng cách giữa checkbox và label */
    }

    .danger {
      color: red;
    }

    .success {
      color: green;
    }
    section {
      background-image: url(<c:url value='/template/media/richard-stachmann-xSI9HVPmYeE-unsplash.jpg' />);
      background-size: 100% 100%;
    }
  </style>
</head>
<body>

<%@ include file="/common/header.jsp" %>

<section class="h-100 bg-dark" style="margin-top: 50px">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                   alt="Sample photo" class="img-fluid"
                   style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <form action="<c:url value='/home'/>" id="formSubmit" method="post">


                <div class="card-body p-md-5 text-black">
                  <img src="<c:url value='/template/media/images.png' />" alt="Murach Logo" width="80" height="80" style="margin: 0px;">
                  <h3 style="margin-top: 10px; color:  teal">Registration form</h3>
                  <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
                  <h2 style="margin-top: 10px; color:  teal">Your infomation</h2>
                  <div class="row">
                    <div class=" mb-4">
                      <div data-mdb-input-init class="form-outline">
                        <input type="text" name="firstName" id="form3Example1m" class="form-control form-control-lg" />
                        <label class="form-label" for="form3Example1m">First name</label>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class=" mb-4">
                      <div data-mdb-input-init class="form-outline">
                        <input type="text" id="form3Example1n" name="lastName" class="form-control form-control-lg" />
                        <label class="form-label" for="form3Example1n">Last name</label>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class=" mb-4">
                      <div data-mdb-input-init class="form-outline">
                        <input type="text" name="email" id="form3Example1m1" class="form-control form-control-lg" />
                        <label class="form-label" for="form3Example1m1">Email</label>
                      </div>
                    </div>
                  </div>

                  <c:if test="${not empty resultMessage}">
                    <div class="${resultPost}" style="margin-top: 15px" >
                        ${resultMessage}
                    </div>
                  </c:if>

                  <div class="d-flex justify-content-end pt-3">
                    <button id="resetBtn"  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-light btn-lg">Reset all</button>
                    <button  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg ms-2">Submit form</button>
                  </div>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</section>

<%@ include file="/common/footer.jsp" %>

<script>
  document.getElementById('resetBtn').addEventListener('click', function() {
    document.getElementById('formSubmit').reset();  // Đặt lại giá trị của form về mặc định
  });
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>
