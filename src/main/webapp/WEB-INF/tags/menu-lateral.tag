<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion no-print" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Jogo Loteria</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="dashboard"/>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Menu Principal
      </div>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="novaaposta"/>">
          <i class="fas fa-fw fa-cube"></i>
          <span>Nova Aposta</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="<c:url value="apostas"/>">
          <i class="fas fa-fw fa-cubes"></i>
          <span>Apostas</span></a>
      </li>

    </ul>
    <!-- End of Sidebar -->