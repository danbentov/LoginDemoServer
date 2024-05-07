using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

[Keyless]
public partial class Grade
{
    [StringLength(100)]
    public string Subject { get; set; } = null!;

    public int Score { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime Date { get; set; }

    [StringLength(100)]
    public string? Email { get; set; }

    [ForeignKey("Email")]
    public User? EmailNavigation { get; set; }
}
