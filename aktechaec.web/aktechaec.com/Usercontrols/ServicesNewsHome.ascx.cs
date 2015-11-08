using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;

namespace aktech.Usercontrols
{
    public partial class ServicesNewsHome : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Function fun = new Function();
        Home index = new Home();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                loadData();
        }

        #region LoadData
        private void loadData()
        {
            try
            {
                rptServices.DataSource = index.Loadindex(1, 1, -1, 8);
                rptServices.DataBind();

                rptNews.DataSource = index.Loadindex(0, 2, -1, 4);
                rptNews.DataBind();
            }
            catch
            {
            }
        }
        #endregion

        #region Function
        public string GetLinkNews(object News_Url, object News_Seo_Url, object cat_seo)
        {
            try
            {
                return fun.Getlink_News(News_Url, News_Seo_Url, cat_seo);
            }
            catch (Exception ex)
            {
                vpro.functions.clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageT(object News_Id, object News_Image1)
        {

            try
            {
                return fun.GetImageT_News(News_Id, News_Image1);
            }
            catch (Exception ex)
            {
                clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        #endregion
    }
}