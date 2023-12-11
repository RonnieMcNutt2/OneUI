.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getGlobalSearchActivities:I = 0x3

.field static final TRANSACTION_getGlobalSearchActivity:I = 0x4

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_getSearchablesInInsightSearch:I = 0x7

.field static final TRANSACTION_getWebSearchActivity:I = 0x5

.field static final TRANSACTION_launchAssist:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.app.ISearchManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/app/ISearchManager;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_1c

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "getSearchablesInInsightSearch"

    return-object v0

    .line 98
    :pswitch_8
    const-string/jumbo v0, "launchAssist"

    return-object v0

    .line 94
    :pswitch_c
    const-string v0, "getWebSearchActivity"

    return-object v0

    .line 90
    :pswitch_f
    const-string v0, "getGlobalSearchActivity"

    return-object v0

    .line 86
    :pswitch_12
    const-string v0, "getGlobalSearchActivities"

    return-object v0

    .line 82
    :pswitch_15
    const-string v0, "getSearchablesInGlobalSearch"

    return-object v0

    .line 78
    :pswitch_18
    const-string v0, "getSearchableInfo"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 345
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/app/ISearchManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "android.app.ISearchManager"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    packed-switch p1, :pswitch_data_88

    .line 129
    packed-switch p1, :pswitch_data_8e

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 183
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 184
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/ISearchManager$Stub;->getSearchablesInInsightSearch(Z)Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 188
    goto :goto_86

    .line 172
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 175
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Landroid/app/ISearchManager$Stub;->launchAssist(ILandroid/os/Bundle;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_86

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_44
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 165
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 167
    goto :goto_86

    .line 157
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_4f
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 158
    .restart local v2    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_86

    .line 150
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_5a
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 153
    goto :goto_86

    .line 143
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :pswitch_65
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 146
    goto :goto_86

    .line 134
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :pswitch_70
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 135
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 137
    .local v3, "_result":Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    nop

    .line 195
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/SearchableInfo;
    :goto_86
    return v1

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_70
        :pswitch_65
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
