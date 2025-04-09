﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebsiteXemPhim.DataAccess;

#nullable disable

namespace WebsiteXemPhim.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.11")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens", (string)null);
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.AppUser", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("avatar")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("sex")
                        .HasMaxLength(5)
                        .HasColumnType("nvarchar(5)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers", (string)null);
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.BinhLuan", b =>
                {
                    b.Property<int>("BinhLuanId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("BinhLuanId"));

                    b.Property<DateTime>("NgayTao")
                        .HasColumnType("datetime2");

                    b.Property<string>("NoiDungBinhLuan")
                        .IsRequired()
                        .HasMaxLength(500)
                        .HasColumnType("nvarchar(500)");

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int?>("PhimLeId")
                        .HasColumnType("int");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("BinhLuanId");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("PhimLeId");

                    b.HasIndex("UserId");

                    b.ToTable("BinhLuan");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ChiTietTheLoaiPhimBo", b =>
                {
                    b.Property<int>("ChiTietTheLoaiPhimBoId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ChiTietTheLoaiPhimBoId"));

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int?>("TheLoaiId")
                        .HasColumnType("int");

                    b.HasKey("ChiTietTheLoaiPhimBoId");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("TheLoaiId");

                    b.ToTable("ChiTietTheLoaiPhimBo");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ChiTietTheLoaiPhimLe", b =>
                {
                    b.Property<int>("ChiTietTheLoaiPhimLeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ChiTietTheLoaiPhimLeId"));

                    b.Property<int?>("PhimLeId")
                        .HasColumnType("int");

                    b.Property<int>("TheLoaiId")
                        .HasColumnType("int");

                    b.HasKey("ChiTietTheLoaiPhimLeId");

                    b.HasIndex("PhimLeId");

                    b.HasIndex("TheLoaiId");

                    b.ToTable("ChiTietTheLoaiPhimLe");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.DanhGia", b =>
                {
                    b.Property<int>("DanhGiaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("DanhGiaId"));

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int?>("PhimLeId")
                        .HasColumnType("int");

                    b.Property<float>("Star")
                        .HasColumnType("real");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("DanhGiaId");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("PhimLeId");

                    b.HasIndex("UserId");

                    b.ToTable("DanhGia");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.HopPhim", b =>
                {
                    b.Property<int>("HopPhimId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("HopPhimId"));

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int?>("PhimLeId")
                        .HasColumnType("int");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("HopPhimId");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("PhimLeId");

                    b.HasIndex("UserId");

                    b.ToTable("HopPhim");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.LichSuXem", b =>
                {
                    b.Property<int>("LichSuXemId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("LichSuXemId"));

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int?>("PhimLeId")
                        .HasColumnType("int");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LichSuXemId");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("PhimLeId");

                    b.HasIndex("UserId");

                    b.ToTable("LichSuXem");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.Nam", b =>
                {
                    b.Property<int>("NamID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("NamID"));

                    b.Property<string>("TenNam")
                        .IsRequired()
                        .HasMaxLength(5)
                        .HasColumnType("nvarchar(5)");

                    b.HasKey("NamID");

                    b.ToTable("Nam");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimBo", b =>
                {
                    b.Property<int>("PhimBoId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PhimBoId"));

                    b.Property<string>("Anh")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("AnhNen")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int>("Like")
                        .HasColumnType("int");

                    b.Property<int>("LuotXem")
                        .HasColumnType("int");

                    b.Property<int?>("NamID")
                        .HasColumnType("int");

                    b.Property<string>("NoiDung")
                        .IsRequired()
                        .HasMaxLength(1500)
                        .HasColumnType("nvarchar(1500)");

                    b.Property<int?>("QuocGiaId")
                        .HasColumnType("int");

                    b.Property<string>("TenPhim")
                        .IsRequired()
                        .HasMaxLength(150)
                        .HasColumnType("nvarchar(150)");

                    b.Property<string>("Trailer")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("TrangThaiId")
                        .HasColumnType("int");

                    b.HasKey("PhimBoId");

                    b.HasIndex("NamID");

                    b.HasIndex("QuocGiaId");

                    b.HasIndex("TrangThaiId");

                    b.ToTable("PhimBo");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimLe", b =>
                {
                    b.Property<int>("PhimLeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PhimLeId"));

                    b.Property<string>("Anh")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("AnhNen")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int>("Like")
                        .HasColumnType("int");

                    b.Property<string>("Link")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int>("LuotXem")
                        .HasColumnType("int");

                    b.Property<int?>("NamID")
                        .HasColumnType("int");

                    b.Property<string>("NoiDung")
                        .IsRequired()
                        .HasMaxLength(1500)
                        .HasColumnType("nvarchar(1500)");

                    b.Property<int?>("QuocGiaId")
                        .HasColumnType("int");

                    b.Property<string>("TenPhim")
                        .IsRequired()
                        .HasMaxLength(150)
                        .HasColumnType("nvarchar(150)");

                    b.Property<string>("ThoiLuong")
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("Trailer")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("TrangThaiId")
                        .HasColumnType("int");

                    b.HasKey("PhimLeId");

                    b.HasIndex("NamID");

                    b.HasIndex("QuocGiaId");

                    b.HasIndex("TrangThaiId");

                    b.ToTable("PhimLe");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.QuocGia", b =>
                {
                    b.Property<int>("QuocGiaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("QuocGiaId"));

                    b.Property<string>("TenQuocGia")
                        .IsRequired()
                        .HasMaxLength(57)
                        .HasColumnType("nvarchar(57)");

                    b.HasKey("QuocGiaId");

                    b.ToTable("QuocGia");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TapPhim", b =>
                {
                    b.Property<int>("TapPhimId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TapPhimId"));

                    b.Property<string>("Link")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<int>("Tap")
                        .HasColumnType("int");

                    b.Property<string>("ThoiLuong")
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("TapPhimId");

                    b.HasIndex("PhimBoId");

                    b.ToTable("TapPhim");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TheLoai", b =>
                {
                    b.Property<int>("TheLoaiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TheLoaiId"));

                    b.Property<string>("TenTheLoai")
                        .IsRequired()
                        .HasMaxLength(25)
                        .HasColumnType("nvarchar(25)");

                    b.HasKey("TheLoaiId");

                    b.ToTable("TheLoai");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ThongBao", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Message")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("PhimBoId")
                        .HasColumnType("int");

                    b.Property<string>("Url")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("PhimBoId");

                    b.HasIndex("UserId");

                    b.ToTable("ThongBaos");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TrangThai", b =>
                {
                    b.Property<int>("TrangThaiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TrangThaiId"));

                    b.Property<string>("TrangThaiPhim")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.HasKey("TrangThaiId");

                    b.ToTable("TrangThai");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebsiteXemPhim.Models.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.AppUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.BinhLuan", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("binhLuans")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.PhimLe", "PhimLe")
                        .WithMany("binhLuans")
                        .HasForeignKey("PhimLeId");

                    b.HasOne("WebsiteXemPhim.Models.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimBo");

                    b.Navigation("PhimLe");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ChiTietTheLoaiPhimBo", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("ChiTietTheLoaiPhimBos")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.TheLoai", "TheLoai")
                        .WithMany("ChiTietTheLoaiPhimBos")
                        .HasForeignKey("TheLoaiId");

                    b.Navigation("PhimBo");

                    b.Navigation("TheLoai");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ChiTietTheLoaiPhimLe", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimLe", "PhimLe")
                        .WithMany("ChiTietTheLoaiPhimLes")
                        .HasForeignKey("PhimLeId");

                    b.HasOne("WebsiteXemPhim.Models.TheLoai", "TheLoai")
                        .WithMany("ChiTietTheLoaiPhimLes")
                        .HasForeignKey("TheLoaiId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimLe");

                    b.Navigation("TheLoai");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.DanhGia", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("danhGias")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.PhimLe", "PhimLe")
                        .WithMany("danhGias")
                        .HasForeignKey("PhimLeId");

                    b.HasOne("WebsiteXemPhim.Models.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimBo");

                    b.Navigation("PhimLe");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.HopPhim", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("Hops")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.PhimLe", "PhimLe")
                        .WithMany("Hops")
                        .HasForeignKey("PhimLeId");

                    b.HasOne("WebsiteXemPhim.Models.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimBo");

                    b.Navigation("PhimLe");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.LichSuXem", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("lichSuXems")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.PhimLe", "PhimLe")
                        .WithMany("lichSuXems")
                        .HasForeignKey("PhimLeId");

                    b.HasOne("WebsiteXemPhim.Models.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimBo");

                    b.Navigation("PhimLe");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimBo", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.Nam", "Nam")
                        .WithMany("phimBos")
                        .HasForeignKey("NamID");

                    b.HasOne("WebsiteXemPhim.Models.QuocGia", "QuocGia")
                        .WithMany("phimBos")
                        .HasForeignKey("QuocGiaId");

                    b.HasOne("WebsiteXemPhim.Models.TrangThai", "TrangThai")
                        .WithMany("phimBos")
                        .HasForeignKey("TrangThaiId");

                    b.Navigation("Nam");

                    b.Navigation("QuocGia");

                    b.Navigation("TrangThai");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimLe", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.Nam", "Nam")
                        .WithMany("phimLes")
                        .HasForeignKey("NamID");

                    b.HasOne("WebsiteXemPhim.Models.QuocGia", "QuocGia")
                        .WithMany("phimLes")
                        .HasForeignKey("QuocGiaId");

                    b.HasOne("WebsiteXemPhim.Models.TrangThai", "TrangThai")
                        .WithMany("phimLes")
                        .HasForeignKey("TrangThaiId");

                    b.Navigation("Nam");

                    b.Navigation("QuocGia");

                    b.Navigation("TrangThai");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TapPhim", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("TapPhims")
                        .HasForeignKey("PhimBoId");

                    b.Navigation("PhimBo");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.ThongBao", b =>
                {
                    b.HasOne("WebsiteXemPhim.Models.PhimBo", "PhimBo")
                        .WithMany("ThongBaos")
                        .HasForeignKey("PhimBoId");

                    b.HasOne("WebsiteXemPhim.Models.AppUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PhimBo");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.Nam", b =>
                {
                    b.Navigation("phimBos");

                    b.Navigation("phimLes");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimBo", b =>
                {
                    b.Navigation("ChiTietTheLoaiPhimBos");

                    b.Navigation("Hops");

                    b.Navigation("TapPhims");

                    b.Navigation("ThongBaos");

                    b.Navigation("binhLuans");

                    b.Navigation("danhGias");

                    b.Navigation("lichSuXems");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.PhimLe", b =>
                {
                    b.Navigation("ChiTietTheLoaiPhimLes");

                    b.Navigation("Hops");

                    b.Navigation("binhLuans");

                    b.Navigation("danhGias");

                    b.Navigation("lichSuXems");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.QuocGia", b =>
                {
                    b.Navigation("phimBos");

                    b.Navigation("phimLes");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TheLoai", b =>
                {
                    b.Navigation("ChiTietTheLoaiPhimBos");

                    b.Navigation("ChiTietTheLoaiPhimLes");
                });

            modelBuilder.Entity("WebsiteXemPhim.Models.TrangThai", b =>
                {
                    b.Navigation("phimBos");

                    b.Navigation("phimLes");
                });
#pragma warning restore 612, 618
        }
    }
}
