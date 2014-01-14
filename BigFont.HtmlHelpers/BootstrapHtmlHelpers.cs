using System;
using System.Linq.Expressions;
using System.Web.Mvc;
using System.Linq;

namespace BigFont.HtmlHelpers
{
    public static class BootstrapHtmlHelpers
    {
        public static string BootstrapLabelFor<TModel, TValue>(this HtmlHelper<TModel> html, Expression<Func<TModel, TValue>> expression)
        {
            ModelMetadata metaData = ModelMetadata.FromLambdaExpression(expression, html.ViewData);
            string htmlFieldName = ExpressionHelper.GetExpressionText(expression);
            string labelText = metaData.DisplayName ?? metaData.PropertyName ?? htmlFieldName.Split('.').Last();


            return "";
        }
    }
}
