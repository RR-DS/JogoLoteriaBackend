<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib tagdir="/WEB-INF/tags/" prefix="tag"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Jogo Loteria - Resultado</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <tag:menu-lateral/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <tag:menu-superior></tag:menu-superior>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800 text-center">Resultado</h1>
          <div class="row">
            <div class="col-12">

              <!-- Basic Card Example -->
              <div class="card shadow mb-4 card-novaaposta mx-auto">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Confira quais números foram sorteados</h6>
                </div>
                <div class="card-body">


                  <div class="row">
                    <div class="col-md-12 numeros">
                      <h2>Números Sorteados</h2>
                      <span class="badge badge-pill badge-primary p-3 text-lg">1</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">3</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">4</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">5</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">8</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">10</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">11</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">13</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">15</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">16</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">18</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">20</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">22</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">24</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">25</span>
                    </div>
                  </div>

                  <div class="row mt-5">
                    <div class="col-md-12 numeros">
                      <h2>Sua Aposta</h2>
                      <span class="badge badge-pill badge-primary p-3 text-lg">1</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">2</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">3</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">6</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">7</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">9</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">11</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">13</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">16</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">18</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">20</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">21</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">22</span>
                      <span class="badge badge-pill badge-danger p-3 text-lg">23</span>
                      <span class="badge badge-pill badge-primary p-3 text-lg">24</span>
                    </div>
                  </div>


                  <div class="row mt-3">
                    <div class="col-md-6 d-flex align-items-center justify-content-center">
                      <div>
                        <h4>Codigo Aposta: <strong>5241</strong></h4>
                        <h4>Erros: <strong>6</strong></h4>
                        <h4>Acertos: <strong>9</strong></h4>
                        <h4>Ganhos: <strong>Nenhum</strong></h4>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <img class="imagem-novaaposta img-fluid" alt="dinheiro"
                        src="https://www.gpspoint.com.br/wp-content/uploads/2019/11/ganhar-dinheior-internet.png">
                    </div>
                  </div>

                </div>
                <div class="card-footer text-center">
                  <a href="<c:url value="novaaposta"/>" class="btn btn-primary btn-icon-split btn-lg mt-3 mb-3 mr-4">
                    <span class="icon text-white-50">
                      <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">Nova Aposta</span>
                  </a>
                  <a href="<c:url value="apostas"/>" class="btn btn-info btn-icon-split btn-lg mt-3 mb-3">
                    <span class="icon text-white-50">
                      <i class="fas fa-cubes"></i>
                    </span>
                    <span class="text">Ver Apostas</span>
                  </a>
                </div>
              </div>
              <!-- Fim card-->

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <tag:scroll-top-component/>
  <tag:modal-sair-component/>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>