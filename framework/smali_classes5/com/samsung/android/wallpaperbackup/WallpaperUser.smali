.class public Lcom/samsung/android/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    }
.end annotation


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mCoverType:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mExternalParams:Ljava/lang/String;

.field private mHeight:I

.field private mOrientation:I

.field private mPath:Ljava/lang/String;

.field private mTiltSetting:I

.field private mTransparency:I

.field private mUri:Landroid/net/Uri;

.field private mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

.field private mWidth:I

.field private mWpType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 41
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 42
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 47
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 48
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 50
    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 53
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 54
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 58
    iput p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 64
    iput-object p5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 66
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 68
    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 69
    return-void
.end method


# virtual methods
.method public getBottomValue()I
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    return v0
.end method

.method public getComponent()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverType()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalParams()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    return v0
.end method

.method public getLeftValue()I
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRightValue()I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    return v0
.end method

.method public getRotationValue()I
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    return v0
.end method

.method public getTiltSettingValue()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return v0
.end method

.method public getTopValue()I
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget v0, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    return v0
.end method

.method public getTransparency()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWallpaperData()Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    return v0
.end method

.method public getWpType()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    return v0
.end method

.method public setBottomValue(I)V
    .registers 3
    .param p1, "bottom"    # I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    .line 133
    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .registers 2
    .param p1, "component"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCoverType(Ljava/lang/String;)V
    .registers 2
    .param p1, "coverType"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setExternalParams(Ljava/lang/String;)V
    .registers 2
    .param p1, "params"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 76
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 77
    return-void
.end method

.method public setLeftValue(I)V
    .registers 3
    .param p1, "left"    # I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    .line 121
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 100
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    .line 101
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRightValue(I)V
    .registers 3
    .param p1, "right"    # I

    .line 128
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    .line 129
    return-void
.end method

.method public setRotationValue(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    .line 137
    return-void
.end method

.method public setTiltSettingValue(I)V
    .registers 2
    .param p1, "tiltSetting"    # I

    .line 141
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    .line 142
    return-void
.end method

.method public setTopValue(I)V
    .registers 3
    .param p1, "top"    # I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    .line 125
    return-void
.end method

.method public setTransparency(I)V
    .registers 2
    .param p1, "type"    # I

    .line 112
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    .line 113
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    .line 93
    return-void
.end method

.method public setWallpaperData(Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;)V
    .registers 2
    .param p1, "data"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    .line 117
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 72
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 73
    return-void
.end method

.method public setWpType(I)V
    .registers 2
    .param p1, "wpType"    # I

    .line 88
    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 221
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tWallpaperUser:\n\t\tmWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmTransparency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmDeviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmComponent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmWpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmTiltSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t\tmOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    if-eqz v1, :cond_a5

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tmWallpaperData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
