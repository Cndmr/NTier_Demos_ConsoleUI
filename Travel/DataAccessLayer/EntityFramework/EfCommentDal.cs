using DataAccessLayer.Abstract;
using DataAccessLayer.Concrete;
using DataAccessLayer.Repositories;
using EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.EntityFramework
{
    public class EfCommentDal : GenericRepository<Comment>, ICommentDal
    {
        public void CommentListWithLocationAndMember()
        {
           
            Context c = new Context();
            var yorumlar =  (from x in c.Comments
                             join y in c.Locations
                             on
                             x.LocationId equals y.LocationId
                             join z in c.Members
                             on
                             x.MemberId equals z.MemberId

                             select new
                        {
                             x.CommentId,
                             y.LocationName,
                             z.MemberName,
                             z.MemberSurname,
                             x.CommenContent
                          }).ToList();

            foreach (var item in yorumlar)
            {
                Console.WriteLine(item.CommentId + " | " + item.LocationName + " | " + item.MemberName + "  " + item.MemberSurname + " | " +
                    item.CommenContent);

            }


        }
    }
}
