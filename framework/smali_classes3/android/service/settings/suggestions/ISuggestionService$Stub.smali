.class public abstract Landroid/service/settings/suggestions/ISuggestionService$Stub;
.super Landroid/os/Binder;
.source "ISuggestionService.java"

# interfaces
.implements Landroid/service/settings/suggestions/ISuggestionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/ISuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.settings.suggestions.ISuggestionService"

.field static final TRANSACTION_dismissSuggestion:I = 0x3

.field static final TRANSACTION_getSuggestions:I = 0x2

.field static final TRANSACTION_launchSuggestion:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/service/settings/suggestions/ISuggestionService;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_10

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "launchSuggestion"

    return-object v0

    .line 73
    :pswitch_9
    const-string v0, "dismissSuggestion"

    return-object v0

    .line 69
    :pswitch_c
    const-string/jumbo v0, "getSuggestions"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    packed-switch p1, :pswitch_data_4c

    .line 104
    packed-switch p1, :pswitch_data_52

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 125
    :pswitch_1c
    sget-object v2, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 126
    .local v2, "_arg0":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_4b

    .line 116
    .end local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    :pswitch_2e
    sget-object v2, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 117
    .restart local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_4b

    .line 108
    .end local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    :pswitch_40
    invoke-virtual {p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 111
    nop

    .line 136
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x2
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
