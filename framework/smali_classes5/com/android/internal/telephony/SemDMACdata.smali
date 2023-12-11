.class public Lcom/android/internal/telephony/SemDMACdata;
.super Ljava/lang/Object;
.source "SemDMACdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/SemDMACdata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carrierActivatedId:Ljava/lang/String;

.field private isUnLockedPhone:Ljava/lang/String;

.field private mccmnc:Ljava/lang/String;

.field private preInstalledMsgAppError:Ljava/lang/String;

.field private tssActivated:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/android/internal/telephony/SemDMACdata$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemDMACdata$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemDMACdata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    .line 17
    const-string v1, "false"

    iput-object v1, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierActivatedId()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUnLockedPhone()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getMccmnc()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    return-object v0
.end method

.method public getPreInstalledMsgAppError()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    return-object v0
.end method

.method public getTssActivated()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    return-object v0
.end method

.method public setCarrierActivatedId(Ljava/lang/String;)V
    .registers 2
    .param p1, "carrierActivatedId"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setIsUnLockedPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "isUnLockedPhone"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMccmnc(Ljava/lang/String;)V
    .registers 2
    .param p1, "mccmnc"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPreInstalledMsgAppError(Ljava/lang/String;)V
    .registers 2
    .param p1, "preInstalledMsgAppError"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTssActivated(Ljava/lang/String;)V
    .registers 2
    .param p1, "tssActivated"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 93
    return-void
.end method
