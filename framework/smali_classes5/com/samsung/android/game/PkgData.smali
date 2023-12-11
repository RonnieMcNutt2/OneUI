.class public Lcom/samsung/android/game/PkgData;
.super Ljava/lang/Object;
.source "PkgData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_GAME:I = 0x1

.field public static final CATEGORY_NON_GAME:I = 0x0

.field public static final CATEGORY_SEC_GAME_FAMILY:I = 0x3

.field public static final CATEGORY_TUNABLE_NON_GAME:I = 0x2

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CPU_GPU_LEVEL_DEFAULT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/PkgData;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_PERCENT_UNDEFINED:I = -0x1

.field public static final SHIFT_TEMPERATURE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PkgData"


# instance fields
.field private mCategory:I

.field private mCpuLevel:I

.field private mCpuMinPercent:I

.field private mGameSdkSetting:Ljava/lang/String;

.field private mGovernorSetting:Ljava/lang/String;

.field private mGpuLevel:I

.field private mGpuMinPercent:I

.field private mIsGameSdkSupported:Z

.field private mPkgName:Ljava/lang/String;

.field private mShiftTemperature:I

.field private mUserID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Lcom/samsung/android/game/PkgData$1;

    invoke-direct {v0}, Lcom/samsung/android/game/PkgData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/PkgData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    .line 28
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    .line 29
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    .line 30
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    .line 31
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    .line 34
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    .line 35
    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mPkgName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    move v1, v2

    :cond_52
    iput-boolean v1, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/game/PkgData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/game/PkgData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    .line 28
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    .line 29
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    .line 30
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    .line 31
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    .line 34
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    .line 35
    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/game/PkgData;->mPkgName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "category"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    .line 28
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    .line 29
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    .line 30
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    .line 31
    iput v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    .line 34
    iput v1, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    .line 35
    iput-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/game/PkgData;->mPkgName:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    return v0
.end method

.method public getCpuLevel()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    return v0
.end method

.method public getCpuMinPercent()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    return v0
.end method

.method public getGameSdkSetting()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getGovernorSetting()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuLevel()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    return v0
.end method

.method public getGpuMinPercent()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShiftTemperature()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    return v0
.end method

.method public getUserID()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    return v0
.end method

.method public isGameSdkSupported()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    return v0
.end method

.method public isTunableApp()Ljava/lang/Boolean;
    .registers 5

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "ret":Ljava/lang/Boolean;
    iget v1, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 149
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_16

    .line 150
    :cond_c
    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    .line 152
    :cond_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    :cond_16
    :goto_16
    return-object v0
.end method

.method public setCategory(I)V
    .registers 2
    .param p1, "category"    # I

    .line 102
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    .line 103
    return-void
.end method

.method public setCpuLevel(I)V
    .registers 2
    .param p1, "cpuLevel"    # I

    .line 106
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    .line 107
    return-void
.end method

.method public setCpuMinPercent(I)V
    .registers 2
    .param p1, "cpuMinPercent"    # I

    .line 118
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    .line 119
    return-void
.end method

.method public setGameSdkSetting(Ljava/lang/String;)V
    .registers 2
    .param p1, "gameSdkSetting"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setGameSdkSupported(Z)V
    .registers 2
    .param p1, "isGameSdkSupported"    # Z

    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    .line 131
    return-void
.end method

.method public setGovernorSetting(Ljava/lang/String;)V
    .registers 2
    .param p1, "governorSetting"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setGpuLevel(I)V
    .registers 2
    .param p1, "gpuLevel"    # I

    .line 110
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    .line 111
    return-void
.end method

.method public setGpuMinPercent(I)V
    .registers 2
    .param p1, "gpuMinPercent"    # I

    .line 122
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    .line 123
    return-void
.end method

.method public setShiftTemperature(I)V
    .registers 2
    .param p1, "shiftTemperature"    # I

    .line 114
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    .line 115
    return-void
.end method

.method public setUserID(I)V
    .registers 2
    .param p1, "userID"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCpuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mGpuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mShiftTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mCpuMinPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mGpuMinPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mGovernorSetting:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/game/PkgData;->mIsGameSdkSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/samsung/android/game/PkgData;->mUserID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/game/PkgData;->mGameSdkSetting:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return-void
.end method
