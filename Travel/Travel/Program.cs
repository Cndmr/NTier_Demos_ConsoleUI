using BusinessLayer.Concrete;
using BusinessLayer.FluentValidation;
using DataAccessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Console_Dersleri_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //LocationManager locationManager = new LocationManager(new EfLocationDal());
            //var values = locationManager.TGetList();
            //void listele()
            //{


            //    foreach (var value in values)
            //    {
            //        Console.WriteLine(value.LocationName);
            //        Console.WriteLine("----------");
            //    }
            //}
            //Location location = new Location();

            //EKLEME İŞLEMİ
            ////location.LocationName = "Rotterdam";
            ////locationManager.TInsert(location);
            ///
            //Silme İşlemi
            //var locationValue=locationManager.TGetById(11);
            //locationManager.TDelete(locationValue);

            //Güncelleme
            //var locationValue = locationManager.TGetById(2);
            //locationValue.LocationName = "Çanakkale";
            //locationManager.TUpdate(locationValue);
            //Console.Write("Güncelleme Yapıldı");
            //MemberManager memberManager= new MemberManager(new EfMemberDal());
            //var values = memberManager.TGetList();
            //foreach (var value in values)
            //{
            //    Console.WriteLine(value.MemberName + " " + value.MemberSurname);
            //    Console.WriteLine("------------------");
            //}

            //Member member = new Member();
            //member.MemberName = "a";
            //member.MemberSurname = "s";
            //memberManager.TInsert(member);
            //var valueMember = memberManager.TGetById(9);
            //memberManager.TDelete(valueMember);
            //foreach (var item in valueMember)

            //{
            //    Console.WriteLine(item.);

            //}

            //valueMember.MemberName = "Aslı";
            //valueMember.MemberSurname = "Meşe";
            //memberManager.TUpdate(valueMember);


            //Console.WriteLine("İşlem Yapıldı");
            //CommentManager commentManager = new CommentManager(new EfCommentDal());
            //var values = commentManager.TGetList();
            //foreach (var value in values)
            //{
            //    Console.WriteLine(value.CommentId + "-");
            //    Console.WriteLine("-----------");
            //}

            //CommentManager commentManager = new CommentManager(new EfCommentDal());
            //commentManager.TCommentListWithLocationAndMember();

            //MemberManager memberManager = new MemberManager (new EfMemberDal());
            //Member member = new Member();
            //member.MemberName = "Cemil";
            //member.MemberSurname = "Kaya";
            //MemberValidator validationRules = new MemberValidator();
            //ValidationResult results= validationRules.Validate(member);
            //if(results.IsValid)
            //{
            //    memberManager.TInsert(member);
            //    Console.WriteLine("Üye başarılı bir şekilde eklendi");
            //}
            //else
            //{
            //    foreach (var item in results.Errors)
            //    {
            //        Console.Write(item.ErrorMessage);
            //    }
            //}
           
            Console.ReadLine();

        }
    }
}
