.class public final Landroid/service/controls/ControlsProviderInfo;
.super Ljava/lang/Object;
.source "ControlsProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ControlsProviderInfo"


# instance fields
.field private final mAppIntent:Landroid/app/PendingIntent;

.field private final mAutoRemove:Z

.field private final mIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/service/controls/ControlsProviderInfo$1;

    invoke-direct {v0}, Landroid/service/controls/ControlsProviderInfo$1;-><init>()V

    sput-object v0, Landroid/service/controls/ControlsProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "appIntent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    .line 40
    iput-object p2, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Z)V
    .registers 4
    .param p1, "appIntent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "autoRemove"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    .line 50
    iput-object p2, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 51
    iput-boolean p3, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 61
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_22

    .line 63
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 67
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 25
    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAutoRemove()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_13

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 95
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    :goto_17
    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    return-void
.end method
