#pragma checksum "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "c1123de1c7168f19f2ec98f4f8daee40a86eeb6f20ebb4da8653598556545a6b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_AdminArea_Views_News__ViewAllNews), @"mvc.1.0.view", @"/Areas/AdminArea/Views/News/_ViewAllNews.cshtml")]
namespace AspNetCore
{
    #line hidden
    using global::System;
    using global::System.Collections.Generic;
    using global::System.Linq;
    using global::System.Threading.Tasks;
    using global::Microsoft.AspNetCore.Mvc;
    using global::Microsoft.AspNetCore.Mvc.Rendering;
    using global::Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using System.Security.Claims;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using System.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\_ViewImports.cshtml"
using HakunaMatata.Helpers;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA256", @"c1123de1c7168f19f2ec98f4f8daee40a86eeb6f20ebb4da8653598556545a6b", @"/Areas/AdminArea/Views/News/_ViewAllNews.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA256", @"123ad649825955d834a2d363b88c979029e800ac8e78b481c06e97d275e7508d", @"/Areas/AdminArea/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_AdminArea_Views_News__ViewAllNews : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<HakunaMatata.Models.DataModels.News>>
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
                    <h5>Chức vụ trong hệ thống</h5>
                </div>
                <div class=""ibox-content"">
                    <div class=""row mb-2 ml-0"">
                        <a");
            BeginWriteAttribute("onclick", " onclick=\"", 436, "\"", 552, 6);
            WriteAttributeValue("", 446, "showInPopup(\'", 446, 13, true);
#nullable restore
#line 13 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
WriteAttributeValue("", 459, Url.Action("CreateOrEdit","News",new { id = 0 },Context.Request.Scheme), 459, 72, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 531, "\',\'Thêm", 531, 7, true);
            WriteAttributeValue(" ", 538, "tin", 539, 4, true);
            WriteAttributeValue(" ", 542, "tức", 543, 4, true);
            WriteAttributeValue(" ", 546, "mới\')", 547, 6, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-brown col-lg-1 mr-2 text-white\">Thêm mới</a>\n");
            WriteLiteral("                    </div>\n                    <div class=\"row mb-2 ml-0\">\n                        <a");
            BeginWriteAttribute("onclick", " onclick=\"", 818, "\"", 936, 5);
            WriteAttributeValue("", 828, "showInPopup(\'", 828, 13, true);
#nullable restore
#line 17 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
WriteAttributeValue("", 841, Url.Action("CreateOrEditImage","News",new { id = 0 },Context.Request.Scheme), 841, 77, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 918, "\',\'Thêm", 918, 7, true);
            WriteAttributeValue(" ", 925, "hình", 926, 5, true);
            WriteAttributeValue(" ", 930, "ảnh\')", 931, 6, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-brown col-lg-1 mr-2 text-white\">Thêm hình ảnh</a>\n");
            WriteLiteral(@"                    </div>

                    <table class=""table table-hover table-bordered"">
                        <thead>
                            <tr>
                                <th class=""text-center"">
                                    Id
                                </th>
                                <th class=""text-center"">
                                    Tiêu đề
                                </th>
                                <th class=""text-center"">
                                    Nội Dung
                                </th>

                                <th class=""text-center"">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
");
#nullable restore
#line 38 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
                             foreach (var item in Model)
                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                <tr>\n                                    <td class=\"text-center\">\n                                        ");
#nullable restore
#line 42 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
                                   Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\n                                    </td>\n                                    <td class=\"text-center\">");
#nullable restore
#line 44 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
                                                       Write(item.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\n                                    <td class=\"text-center\">\n                                        <div class=\"news-body-content\">\n                                            ");
#nullable restore
#line 47 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
                                       Write(item.NewsBody);

#line default
#line hidden
#nullable disable
            WriteLiteral("\n                                        </div>\n                                    </td>\n                                    <td class=\"text-center\">\n                                        <a");
            BeginWriteAttribute("onclick", " onclick=\"", 2588, "\"", 2707, 5);
            WriteAttributeValue("", 2598, "showInPopup(\'", 2598, 13, true);
#nullable restore
#line 51 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
WriteAttributeValue("", 2611, Url.Action("CreateOrEdit","News",new {id=item.Id},Context.Request.Scheme), 2611, 74, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 2685, "\',\'Update", 2685, 9, true);
            WriteAttributeValue(" ", 2694, "level", 2695, 6, true);
            WriteAttributeValue(" ", 2700, "name\')", 2701, 7, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-blue btn-circle text-white\"><i class=\"fas fa-pen\"></i></a>\n\n                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c1123de1c7168f19f2ec98f4f8daee40a86eeb6f20ebb4da8653598556545a6b11817", async() => {
                WriteLiteral(@"
                                            <button class=""btn btn-danger btn-circle"" type=""submit"">
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
#line 53 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
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
#line 60 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\News\_ViewAllNews.cshtml"
                            }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

</div>

<style>
    .news-body-content {
        max-width: 200px; /* Adjust the width as needed */
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
    }

</style>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<HakunaMatata.Models.DataModels.News>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
