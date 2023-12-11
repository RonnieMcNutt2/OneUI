.class public final Landroid/telephony/euicc/DownloadableSubscription;
.super Ljava/lang/Object;
.source "DownloadableSubscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/DownloadableSubscription$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private carrierName:Ljava/lang/String;

.field private confirmationCode:Ljava/lang/String;

.field public final encodedActivationCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription$1;

    invoke-direct {v0}, Landroid/telephony/euicc/DownloadableSubscription$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->confirmationCode:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    .line 95
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/euicc/DownloadableSubscription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "encodedActivationCode"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "encodedActivationCode"    # Ljava/lang/String;
    .param p2, "confirmationCode"    # Ljava/lang/String;
    .param p3, "carrierName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p4, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Landroid/telephony/euicc/DownloadableSubscription;->confirmationCode:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/euicc/DownloadableSubscription-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static forActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription;
    .registers 2
    .param p0, "encodedActivationCode"    # Ljava/lang/String;

    .line 202
    const-string v0, "Activation code may not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription;

    invoke-direct {v0, p0}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessRules()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationCode()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->confirmationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedActivationCode()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    .local p1, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    .line 273
    return-void
.end method

.method public setAccessRules([Landroid/telephony/UiccAccessRule;)V
    .registers 3
    .param p1, "accessRules"    # [Landroid/telephony/UiccAccessRule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    .line 283
    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .registers 2
    .param p1, "carrierName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->confirmationCode:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->confirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 291
    return-void
.end method
