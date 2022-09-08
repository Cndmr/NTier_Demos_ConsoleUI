using EntityLayer.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.FluentValidation
{
    public class MemberValidator : AbstractValidator<Member>
    {
        public MemberValidator()
        {
            RuleFor(x => x.MemberName).NotEmpty().WithMessage("Üye adı boş geçilemez");
            RuleFor(x => x.MemberSurname).NotEmpty().WithMessage("Üye soyadı boş geçilemez");
            RuleFor(x => x.MemberName).MinimumLength(3).WithMessage("Üye adı en az 3 karakter olmalı");
            RuleFor(x => x.MemberSurname).MinimumLength(2).WithMessage("Üye soyadı en az 2 karakter olmalı");
            RuleFor(x => x.MemberName).MaximumLength(20).WithMessage("Üye adı en fazla 20 karakter olmalı");
            RuleFor(x => x.MemberSurname).MaximumLength(30).WithMessage("Üye soyadı en fazla 30 karakter olmalı");
        }
    }
}
