
<%@ include file="/WEB-INF/Shop/headerShop.jsp"%>


<div id="content-wrapper" class="d-flex flex-column">
	<div id="content">
		<!-- TopBar -->

		<div class="container-fluid" id="container-wrapper"
			style="padding-right: 0;">


			<div class="row mb-3">
				<section class="product">

					<div class="product-container">

						<s:iterator value="componenti">

							<div class="p-box" style="background-color: white;">
								<div class="c-box">
									<div class="box-img">

										<img alt="2"
											src="assets/img/imgProdotti/Componente<s:property value="getIdcomponente()"/>.png"
											style="margin-bottom: 55%; margin-top: 27%; padding-top: -13px; border-top-width: 1px;" />
									</div>
									<div class="box-desc">
										<h3>
											<s:property value="getNome()" />
											<s:property value="getMarca()" />
										</h3>
										<h4>
											Disponibili:
											<s:property value="getQuantDisponibile()" />
										</h4>

										<!--Prezzo--->
										<h4>
											&euro;
											<s:property value="getPrezzo()" />
										</h4>




									</div>
									<!-- zona if -->
								
									<s:if test="%{#session.utente.idcliente!=null}">

										<s:if test="%{getQuantDisponibile()!=0}">
											<div class="box-button"
												style="margin-top: 0px; top: -208.1px;">
												<label>Seleziona quantita:</label>
									
												<s:form theme="simple"
													action="/AreaCliente/AggiungiAlCarrello">
													<s:textfield cssClass="form-control" type="number"
														name="richiesta" min="1" value="1"
														max="%{getQuantDisponibile()}" />
													<s:hidden name="id" value="%{getIdcomponente()}"></s:hidden>
													<br>
													<div>
														<s:submit class="btn-group me-2" value="Aggiungi" />
													</div>
												</s:form>
											</div>
										</s:if>
										<s:else>
											<div class="box-button"
												style="margin-top: 0px; top: -208.1px;">

												<h4 style="color: red;">In arrivo</h4>

												<s:form theme="simple"
													action="/AreaCliente/AggiungiAlCarrello">
													
													<s:hidden name="id" value="%{getIdcomponente()}"></s:hidden>
													<br>
													<div>
														<s:submit class="button disabled" value="Aggiungi" />
													</div>
												</s:form>

											</div>
										</s:else>
									</s:if>
									<s:else>
										<div class="box-button"
											style="margin-top: 0px; top: -208.1px;">

											<h5>Perfavore effettua il login con il tuo account
												cliente</h5>

											<s:form theme="simple"
												action="/AreaCliente/AggiungiAlCarrello">
											<%-- 	<s:hidden name="id" value="%{getIdcomponente()}"></s:hidden> --%>
												<br>
												<div>
													<s:submit class="button disabled" value="Aggiungi" />
												</div>
											</s:form>

										</div>
									</s:else>
								</div>


							</div>


						</s:iterator>
					</div>
				</section>
			</div>

		</div>

	</div>
</div>


<!-- menu carrello a destra  -->
<ul class="navbar-nav sidebar sidebar-light accordion"
	style="width: 36rem !important; border-top-width: 52px; /*! border-top-style: solid; */ padding-top: 1%; padding-left: 1%; padding-right: 1%; text-align: center;">

	<!-- zona if del carrello -->

	<s:if test="%{#session.utente.idcliente!=null}">

		<h4>Il tuo carrello:</h4>

		<s:iterator value="carrello">
			<table class="table table-sm">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col"></th>
						<th scope="col"></th>
						<th scope="col"></th>
						<th scope="col"></th>


					</tr>
				</thead>
				<tbody>
					<tr>

						<td><s:property value="c.nome" /></td>
						<td><s:property value="c.marca" /></td>
						<td><s:property value="quantRichiesta" /></td>
						<td>&euro;<s:property value="c.prezzo" /></td>
						<td><a
							href="/AreaCliente/EliminaDalCarrello?idProdElim=<s:property value="c.idcomponente" />"
							class="fa fa-trash-o"> </a></td>
					</tr>
				</tbody>
			</table>
		</s:iterator>
		<s:set var="totale" value="0" />
		<s:iterator value="carrello">
			<s:set var="totale" value="%{#totale+c.prezzo*quantRichiesta}" />
		</s:iterator>
		<s:label name="totale" value="%{#totale}" label="Totale acquisto " />
	&euro;

	<br>
				
		<a href="/AreaCliente/VisualizzaCarrello"
			class="btn btn-primary btn-block"> Vai al carrello completo</a>


	</s:if>
	<s:else>
		<s:if test="%{#session.utente.idtitolare!=null}">

			<a style="color: black" href="/AreaTitolare/GestioneProdotti">Gestione
				Prodotti</a>


		</s:if>
		<s:else>
			<h4>Effettua il login per riempire il tuo carrello</h4>
		</s:else>
	</s:else>
</ul>
<s:fielderror fieldName="troppo" />
		</div>
		
<%@ include file="/WEB-INF/Generali/footer.jsp"%>


