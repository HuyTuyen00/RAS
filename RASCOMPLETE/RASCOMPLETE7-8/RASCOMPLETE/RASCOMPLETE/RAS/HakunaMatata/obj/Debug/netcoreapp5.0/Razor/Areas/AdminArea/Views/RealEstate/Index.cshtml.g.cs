#pragma checksum "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\RealEstate\Index.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "f958d47ec3783d8dc7b663c5564e12fcffe108631d66259869425b454b26ea54"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_AdminArea_Views_RealEstate_Index), @"mvc.1.0.view", @"/Areas/AdminArea/Views/RealEstate/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA256", @"f958d47ec3783d8dc7b663c5564e12fcffe108631d66259869425b454b26ea54", @"/Areas/AdminArea/Views/RealEstate/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA256", @"123ad649825955d834a2d363b88c979029e800ac8e78b481c06e97d275e7508d", @"/Areas/AdminArea/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_AdminArea_Views_RealEstate_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/mustache.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/pagination.min.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/admin/js/services/realEstateServices.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            DefineSection("scripts", async() => {
                WriteLiteral("\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "f958d47ec3783d8dc7b663c5564e12fcffe108631d66259869425b454b26ea545510", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "f958d47ec3783d8dc7b663c5564e12fcffe108631d66259869425b454b26ea546631", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "f958d47ec3783d8dc7b663c5564e12fcffe108631d66259869425b454b26ea547752", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n");
            }
            );
            WriteLiteral("\n");
#nullable restore
#line 7 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\RealEstate\Index.cshtml"
      
    int userId = User.Identity.IsAuthenticated ? Convert.ToInt32(User.Claims.FirstOrDefault(c => c.Type == "UserId").Value) : 0;

#line default
#line hidden
#nullable disable
            WriteLiteral("\n<div class=\"row\">\n    <div class=\"col-6 mt-2 pb-3\">\n        <input type=\"text\" class=\"form-control\"");
            BeginWriteAttribute("value", " value=\"", 429, "\"", 437, 0);
            EndWriteAttribute();
            WriteLiteral(@" id=""search-for-anything"" placeholder=""Nhập từ tìm kiếm"" />
    </div>
</div>
<table class=""table table-striped table-bordered"">
    <thead>
        <tr>
            <th class=""text-center"">#</th>
            <th>Địa chỉ</th>
            <th>Giá/tháng</th>
            <th>Loại phòng</th>
            <th>Người đăng</th>
            <th>Ngày đăng</th>
            <th>Ngày hết hạn</th>
            <th>Tình trạng</th>
            <th></th>
        </tr>
    </thead>

    <tbody id=""real-estate-list-data"">
    </tbody>
</table>

");
#nullable restore
#line 35 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\RealEstate\Index.cshtml"
Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""pb-1"" id=""pagination""></div>
<input type=""hidden"" id=""paging-current-index"" />

<script id=""data-template"" type=""x-tmpl-mustache"">
    <tr>
        <td class=""text-center"">{{Index}}</td>
        <td>{{Street}}</td>
        <td>{{Price}} VNĐ</td>
        <td>{{Type}}</td>
        <td>{{Agent}}</td>
        <td>{{PostDate}}</td>
        <td>{{ExpireTime}}</td>
        <td>{{Status}}</td>
        <td class=""text-center"">
            <a href=""");
#nullable restore
#line 50 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\RealEstate\Index.cshtml"
                Write(Url.Action("Details","RealEstate"));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"?id={{Id}}"" title=""Chi tiết"" class=""btn btn-blue btn-circle"">
                <i class=""fas fa-info"" al></i>
            </a>
            <form onsubmit=""return realEstateServices.disableRealEstate(this);"" class=""d-inline"">
                <input type=""hidden"" name=""id"" value=""{{Id}}"" />
                <button class=""btn btn-warning btn-circle"" title=""Khóa"" type=""submit"">
                    <i class=""fas fa-store-alt-slash""></i>
                </button>
            </form>
            <form onsubmit=""return realEstateServices.deleteRealEstate(this);"" class=""d-inline"">
                <input type=""hidden"" name=""id"" value=""{{Id}}"" />
                <input type=""hidden"" name=""userId"" value=""");
#nullable restore
#line 61 "C:\Users\ADMIN\Desktop\AAA_RASCOMPLETE\RASCOMPLETE\RASCOMPLETE7-8\RASCOMPLETE\RASCOMPLETE\RAS\HakunaMatata\Areas\AdminArea\Views\RealEstate\Index.cshtml"
                                                     Write(userId);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" />\n                <button class=\"btn btn-danger btn-circle\" title=\"Xóa\" type=\"submit\">\n                    <i class=\"fas fa-times\"></i>\n                </button>\n            </form>\n        </td>\n    </tr>\n</script>\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591