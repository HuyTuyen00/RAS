#pragma checksum "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "10daba529f67172cd9300b8399f64be0ca2d1e07"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_wishlist), @"mvc.1.0.view", @"/Views/Home/wishlist.cshtml")]
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
#line 1 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\_ViewImports.cshtml"
using HakunaMatata;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\_ViewImports.cshtml"
using HakunaMatata.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\_ViewImports.cshtml"
using HakunaMatata.Models.ViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\_ViewImports.cshtml"
using HakunaMatata.Helpers;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"10daba529f67172cd9300b8399f64be0ca2d1e07", @"/Views/Home/wishlist.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f4f44ee849981f5e5a30d8d8ec8005f8ff2bba99", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Home_wishlist : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<HakunaMatata.Models.ViewModels.VM_WishList>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", new global::Microsoft.AspNetCore.Html.HtmlString("text/javascript"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/assets/js/maplace-active.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
  
    ViewData["Title"] = "Trang chủ";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            WriteLiteral("\r\n");
            DefineSection("scripts", async() => {
                WriteLiteral("\r\n    <script async defer\r\n        src=\"https://maps.googleapis.com/maps/api/js?key=MY_API_KEY&callback=LoadMarker\">\r\n    </script>\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "10daba529f67172cd9300b8399f64be0ca2d1e075396", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n");
            }
            );
            WriteLiteral(@"    <!-- user wish -->
    <div style=""margin-top: 20vh;"">
        <div class=""container"">
            <div class=""user-wishlist"">
                <img class=""img-user"" src=""/assets/img/author/1.png"" />
                <h3>USER'S WISHLIST</h3>
            </div>
            <div class=""user-search"">
                <input type=""text"" class=""search-input"" placeholder=""Nhap de tim kiem san pham"">
                <div class=""search-btn"">
                    <div class=""search-btn-icon fa fa-search""></div>
                </div>
            </div>
        </div>
    <div class=""container"">
");
#nullable restore
#line 28 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
         foreach (var item in Model)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <div class=\"wish-item row\">\r\n                <div class=\"col-4\">\r\n");
#nullable restore
#line 32 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
                      
                        int randomNumber = new Random().Next(1, 8);
                        string imagePath = $"../assets/img/banner/{item.Id}.jpg";
                    

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <img class=\"img-item-wish\"");
            BeginWriteAttribute("src", " src=\"", 1321, "\"", 1337, 1);
#nullable restore
#line 36 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
WriteAttributeValue("", 1327, imagePath, 1327, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" />\r\n                </div>\r\n                <div class=\"col-8\">\r\n                    <h3 style=\"color:black\" class=\"title-wish-item\">");
#nullable restore
#line 39 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
                                                               Write(item.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h3>\r\n                    <div class=\"row\">\r\n                        <p class=\"col-2 wish-address\">Address : </p>\r\n                        <p class=\"col-10 wish-address-data\">");
#nullable restore
#line 42 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
                                                       Write(item.Address);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                    </div>\r\n                    <div class=\"row\">\r\n                        <p class=\"col-2 wish-cost\">Cost : </p>\r\n                        <p class=\"col-10 wish-cost-data\">");
#nullable restore
#line 46 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
                                                    Write(item.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                    </div>\r\n                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "10daba529f67172cd9300b8399f64be0ca2d1e079849", async() => {
                WriteLiteral(@"
                        <div class=""col-xl-4 col-lg-6 col-md-6 btn-container"">
                            <input style=""color: red; border: 2px solid"" class=""btn btn-buy"" type=""submit"" value=""REMOVE"" />
                        </div>
                    ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "action", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 1945, "/Home/wishlist/", 1945, 15, true);
#nullable restore
#line 48 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
AddHtmlAttributeValue("", 1960, item.Id, 1960, 8, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                </div>\r\n            </div>\r\n");
#nullable restore
#line 55 "C:\Users\Admin\Desktop\RAS_latest\RAS_final\RAS\HakunaMatata\Views\Home\wishlist.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    </div>

    </div>
    <!-- user wish end -->

    <style>
        .container-text {
            padding-bottom: 20px;
        }

        .name-news {
            padding-top: 12px;
        }

        .container-title-text {
            margin-bottom: 70px;
        }

        .img-item-wish {
            height: 100%;
        }

        .user-wishlist,
        .user-search {
            display:flex;
        }

        .user-search{
            margin: 40px 0;
        }

        .img-user{
            width: 48px;
            height: 48px;
            margin-right:16px;
        }

        .search-input {
            width: 100%;
            border: none;
            outline: none;
            font-size: 14px;
            padding: 0 16px;
            border-radius: 2px;
            background-color: #ebeef3;
        }

        .search-btn {
            background-color: #000;
            border: none;
            border-radius: 2px;
            margin-righ");
            WriteLiteral(@"t: 3px;
            height: 34px;
            width: 60px;
            display: flex;
            justify-content: center;
            align-items:center;
        }

        .search-btn-icon {
            font-size: 14px;
            color:#fff;
        }
        
        .wish-item{
            background-color: #ebeef3;
            padding: 16px 0;
            margin-bottom: 16px;
        }

        .wish-address,
        .wish-cost{
            font-weight: bold;
            color:#000;
        }

        .wish-address-data,
        .wish-cost-data,
        .remove-item-wish {
            color: #000;
        }

        .remove-item-wish{
            background-color: #fff;
            border-radius: 12px;
            width: 100px ;
            padding: 0 12px;
        }
    </style>

");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<HakunaMatata.Models.ViewModels.VM_WishList>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
