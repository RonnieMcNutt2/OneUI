.class Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;
.super Ljava/lang/Object;
.source "EnterpriseExchangeAccount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/sec/enterprise/email/EnterpriseExchangeAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;-><init>(Landroid/os/Parcel;Landroid/sec/enterprise/email/EnterpriseExchangeAccount-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 292
    invoke-virtual {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 3
    .param p1, "size"    # I

    .line 298
    new-array v0, p1, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 292
    invoke-virtual {p0, p1}, Landroid/sec/enterprise/email/EnterpriseExchangeAccount$1;->newArray(I)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p1

    return-object p1
.end method
