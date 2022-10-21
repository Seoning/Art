<%@page import="member.model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@include file="/WEB-INF/common/common.jsp" %>	
	
<c:if test="${not empty login_Info.id }">
	<c:if test="${login_Info.id eq 'admin' }">
		<%@include file="/WEB-INF/Top&Bottom/Admin_Top.jsp" %>
	</c:if>
	<c:if test="${login_Info.id ne 'admin' }">
		<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
	</c:if>
</c:if>
<c:if test="${empty login_Info.id }">
	<%@include file="/WEB-INF/Top&Bottom/Top.jsp" %>
</c:if>

        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="museum">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">National Gallery</h2>
                    <h3 class="section-subheading text-muted">Introduce Museum</h3>
                </div>
                <div class="row">
                	<c:forEach var="mb" items="${lists }">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#${mb.name }">
                                
                                <img class="img-fluid" src="<%=request.getContextPath() %>/resources/img/museumImg/${mb.img}" alt="${mb.name}"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">${mb.name}</div>
                                <div class="portfolio-caption-subheading text-muted">${mb.address}</div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Exhibition</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
             </div>
             	<c:forEach var="eb" items="${elists }">
	              <div class="card">
	                <div class="card-body">
	                  <h4 class="card-title">${eb.title}</h4>
	                  <h6 class="card-subtitle mb-2 text-muted">
							<fmt:parseDate var="startday" value="${eb.startday }" pattern="yyyy-MM-dd"/>
							<fmt:formatDate value="${startday }" var="startday" pattern="yyyy-MM-dd"/>
							<fmt:parseDate var="endday" value="${eb.endday }" pattern="yyyy-MM-dd"/>
							<fmt:formatDate value="${endday }" var="endday" pattern="yyyy-MM-dd"/>
							${startday }&nbsp;~&nbsp;${endday }
					  </h6>
	                  <a href="udetail.ex?no=${eb.no }"><img id="eb_img" class="img-fluid" src="<%=request.getContextPath() %>/resources/img/exhib/${eb.img}" alt="..." width=350/></a>
	                 <p class="card-text"> <center><strong><mark>${eb.museum }</mark></strong></center></p>
	                </div>
	              </div>
	              <br>
	         </c:forEach>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <!-- Name input-->
                                <input class="form-control" id="name" type="text" placeholder="Your Name *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <div class="form-group">
                                <!-- Email address input-->
                                <input class="form-control" id="email" type="email" placeholder="Your Email *" data-sb-validations="required,email" />
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <div class="form-group mb-md-0">
                                <!-- Phone number input-->
                                <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <!-- Message input-->
                                <textarea class="form-control" id="message" placeholder="Your Message *" data-sb-validations="required"></textarea>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Submit success message-->
                    <!---->
                    <!-- This is what your users will see when the form-->
                    <!-- has successfully submitted-->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center text-white mb-3">
                            <div class="fw-bolder">Form submission successful!</div>
                            To activate this form, sign up at
                            <br />
                            <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                        </div>
                    </div>
                    <!-- Submit error message-->
                    <!---->
                    <!-- This is what your users will see when there is-->
                    <!-- an error submitting the form-->
                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                    <!-- Submit Button-->
                    <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase disabled" id="submitButton" type="submit">Send Message</button></div>
                </form>
            </div>
        </section>
         <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <c:forEach var="mb" items="${lists }">
        <div class="portfolio-modal modal fade" id="${mb.name }" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="<%=request.getContextPath() %>/resources/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">${mb.name }</h2>
                                    <p class="item-intro text-muted">${mb.address }</p>
                                    <img class="img-fluid d-block mx-auto" src="<%=request.getContextPath() %>/resources/img/museumImg/${mb.img}" alt="${mb.name }" />
                                    
                                    	<ul class="list-inline">
                                    		<li>
                                    			<strong>전화번호:</strong>
                                    			${mb.ph }
                                    		</li>
                                    		<li>
                                    			<strong>휴무일:</strong>
                                    			${mb.offday }
                                    		</li>
                                    		<li>
                                    			<strong>야간개장일:</strong>
                                    			${mb.nightopen }
                                    		</li>
                                    		<li>
                                    			<strong>총계층:</strong>
                                    			${mb.totalfloor }
                                    		</li>
                                    		<li>	
                                    			${mb.opt }
                                    		</li>
                                    	</ul>
                                   
                                    <ul class="list-inline">
                                        <li>
                                            <strong>OPEN:</strong>
                                            ${mb.open }
                                        </li>
                                        <li>
                                            <strong>CLOSE:</strong>
                                            ${mb.close }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
        
       
        
        

        <%@include file="/WEB-INF/Top&Bottom/Bottom.jsp" %>