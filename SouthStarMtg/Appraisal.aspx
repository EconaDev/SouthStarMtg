<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Appraisal.aspx.cs" Inherits="SouthStarMtg.Appraisal" %>

<asp:Content ID="content" ContentPlaceHolderID="Content" runat="server">
    <div style="width: 956px; height: 480px; background-image: url('Images/inspection.jpg');">
        <div class="content-sub">
            <div class="contact">
                <div class="contact-sub">
                    Appraisal
                </div>
                <br />
                <div class="appraisal">
                    Appraisal is a document that gives an estimate of a property's fair market value.
                    An appraisal is generally required by a lender before loan approval to ensure that
                    the mortgage loan amount is not more than the value of the property. The appraisal
                    is performed by an "appraiser" who is typically a state-licensed individual trained
                    to render expert opinions concerning property values. In an appraisal, consideration
                    is given to the property, its location, amenities as well as its physical conditions.
                </div>
                <div class="appraisal">
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" valign="middle">
                                <h3 align="left">
                                    <span style="color: White;">Mortgage Calculator</span>
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <table style="width: 500px; height: 40px;">
                                    <tr>
                                        <td>
                                            Loan Amount
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            Interest Rate (APR)
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            Term(month)
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="amount" name="amount" type="text" value="6000" size="15" />
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;<input id="apr" name="apr" type="text" value="10.0" size="10" />
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <input id="term" name="term" type="text" value="24" size="10" />
                                        </td>
                                        <td>
                                            <button onclick="getAmortization(document.getElementById('amount').value,document.getElementById('term').value,document.getElementById('apr').value); return false">
                                                Calculate</button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <textarea name="textarea" cols="70" rows="9" wrap="off" id="amortizationtable" style="visibility: hidden;
                                    background-color: #FFFFFF;"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="content-address">
            700 N. Fairfax Street • Old Town Alexandria • VA 22314 Tel: 703.548.5505
            • Fax: 703.637.4473
        </div>
    </div>
</asp:Content>
