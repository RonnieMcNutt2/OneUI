.class public Landroid/os/Parcel$ReadWriteHelper;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadWriteHelper"
.end annotation


# static fields
.field public static final DEFAULT:Landroid/os/Parcel$ReadWriteHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 485
    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method


# virtual methods
.method public readString16(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString8(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8NoHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeString16(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 497
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public writeString8(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 493
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8NoHelper(Ljava/lang/String;)V

    .line 494
    return-void
.end method
