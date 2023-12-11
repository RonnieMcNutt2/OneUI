.class public abstract Landroid/app/IWallpaperManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManagerCallback.java"

# interfaces
.implements Landroid/app/IWallpaperManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManagerCallback"

.field static final TRANSACTION_onSemBackupStatusChanged:I = 0x5

.field static final TRANSACTION_onSemMultipackApplied:I = 0x7

.field static final TRANSACTION_onSemWallpaperChanged:I = 0x6

.field static final TRANSACTION_onSemWallpaperColorsAnalysisRequested:I = 0x4

.field static final TRANSACTION_onSemWallpaperColorsChanged:I = 0x3

.field static final TRANSACTION_onWallpaperChanged:I = 0x1

.field static final TRANSACTION_onWallpaperColorsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.app.IWallpaperManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.app.IWallpaperManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManagerCallback;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/app/IWallpaperManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_22

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_5
    const-string/jumbo v0, "onSemMultipackApplied"

    return-object v0

    .line 102
    :pswitch_9
    const-string/jumbo v0, "onSemWallpaperChanged"

    return-object v0

    .line 98
    :pswitch_d
    const-string/jumbo v0, "onSemBackupStatusChanged"

    return-object v0

    .line 94
    :pswitch_11
    const-string/jumbo v0, "onSemWallpaperColorsAnalysisRequested"

    return-object v0

    .line 90
    :pswitch_15
    const-string/jumbo v0, "onSemWallpaperColorsChanged"

    return-object v0

    .line 86
    :pswitch_19
    const-string/jumbo v0, "onWallpaperColorsChanged"

    return-object v0

    .line 82
    :pswitch_1d
    const-string/jumbo v0, "onWallpaperChanged"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 332
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Landroid/app/IWallpaperManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const-string v0, "android.app.IWallpaperManagerCallback"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_d
    packed-switch p1, :pswitch_data_8c

    .line 133
    packed-switch p1, :pswitch_data_92

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 199
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemMultipackApplied(I)V

    .line 202
    goto :goto_8a

    .line 189
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperChanged(II)V

    .line 194
    goto :goto_8a

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemBackupStatusChanged(III)V

    .line 184
    goto :goto_8a

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperColorsAnalysisRequested(II)V

    .line 172
    goto :goto_8a

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_58
    sget-object v2, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors;

    .line 157
    .local v2, "_arg0":Landroid/app/SemWallpaperColors;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V

    .line 162
    goto :goto_8a

    .line 143
    .end local v2    # "_arg0":Landroid/app/SemWallpaperColors;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6f
    sget-object v2, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperColors;

    .line 145
    .local v2, "_arg0":Landroid/app/WallpaperColors;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IWallpaperManagerCallback$Stub;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 150
    goto :goto_8a

    .line 137
    .end local v2    # "_arg0":Landroid/app/WallpaperColors;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_86
    invoke-virtual {p0}, Landroid/app/IWallpaperManagerCallback$Stub;->onWallpaperChanged()V

    .line 138
    nop

    .line 209
    :goto_8a
    return v1

    nop

    :pswitch_data_8c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_86
        :pswitch_6f
        :pswitch_58
        :pswitch_49
        :pswitch_36
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
