#pragma checksum "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "dce426e197c1cb0a757c5af4013e50afceddcda7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_AdminArea_Views_Policy__ViewAllPolicies), @"mvc.1.0.view", @"/Areas/AdminArea/Views/Policy/_ViewAllPolicies.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using System.Security.Claims;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using System.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata.Helpers;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"dce426e197c1cb0a757c5af4013e50afceddcda7", @"/Areas/AdminArea/Views/Policy/_ViewAllPolicies.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"78cad70836f9b0457d0b3cc3c17ec308c911ac87", @"/Areas/AdminArea/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_AdminArea_Views_Policy__ViewAllPolicies : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<HakunaMatata.Models.DataModels.Policy>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "AdminArea", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Delete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("onsubmit", new global::Microsoft.AspNetCore.Html.HtmlString("return jQueryAjaxDelete(this);"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("d-inline"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"

<div class=""wrapper wrapper-content animated fadeInRight"">
    <div class=""row"">
        <div class=""col-lg-12"">
            <div class=""ibox "">
                <div class=""ibox-title"">
                    <h5>Chính sách của website</h5>
                </div>
                <div class=""ibox-content"">
                    <div class=""row mb-2 ml-0"">
                        <a");
            BeginWriteAttribute("onclick", " onclick=\"", 438, "\"", 550, 4);
            WriteAttributeValue("", 448, "showInPopup(\'", 448, 13, true);
#nullable restore
#line 13 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
WriteAttributeValue("", 461, Url.Action("CreateOrEdit","Policy",new { id = 0 },Context.Request.Scheme), 461, 74, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 535, "\',\'New", 535, 6, true);
            WriteAttributeValue(" ", 541, "policy\')", 542, 9, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-brown col-lg-1 mr-2 text-white\">Thêm mới</a>\n");
            WriteLiteral(@"                    </div>

                    <table class=""table table-hover table-bordered"">
                        <thead>
                            <tr>
                                <th class=""text-center"">
                                    Id
                                </th>
                                <th>
                                    Nội dung chính sách
                                </th>
                                <th class=""text-center"">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
");
#nullable restore
#line 30 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
                             foreach (var item in Model)
                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                <tr>\n                                    <td class=\"text-center\">\n                                        ");
#nullable restore
#line 34 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
                                   Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\n                                    </td>\n                                    <td>");
#nullable restore
#line 36 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
                                   Write(item.PolicyContent);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                                    <td class=\"text-center\">\n                                        <a");
            BeginWriteAttribute("onclick", " onclick=\"", 1755, "\"", 1880, 5);
            WriteAttributeValue("", 1765, "showInPopup(\'", 1765, 13, true);
#nullable restore
#line 38 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
WriteAttributeValue("", 1778, Url.Action("CreateOrEdit","Policy",new {id=item.Id},Context.Request.Scheme), 1778, 76, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1854, "\',\'Update", 1854, 9, true);
            WriteAttributeValue(" ", 1863, "policy", 1864, 7, true);
            WriteAttributeValue(" ", 1870, "content\')", 1871, 10, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-blue btn-circle text-white\"><i class=\"fas fa-pen\"></i></a>\n\n                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "dce426e197c1cb0a757c5af4013e50afceddcda79342", async() => {
                WriteLiteral(@"
                                            <button class=""btn btn-warning btn-circle"" type=""submit"">
                                                <i class=""fas fa-times""></i>
                                            </button>
                                        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Area = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 40 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
                                                                                         WriteLiteral(item.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n                                    </td>\n                                </tr>\n");
#nullable restore
#line 47 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Areas\AdminArea\Views\Policy\_ViewAllPolicies.cshtml"
                            }

#line default
#line hidden
#nullable disable
            WriteLiteral("                        </tbody>\n                    </table>\n\n                </div>\n            </div>\n        </div>\n    </div>\n\n</div>\n");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<HakunaMatata.Models.DataModels.Policy>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
