.class public final Landroid/hardware/display/SemWifiDisplayConfig;
.super Ljava/lang/Object;
.source "SemWifiDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final CONNECTION_TYPE_AP:I = 0x2

.field public static final CONNECTION_TYPE_P2P:I = 0x1

.field public static final CONNECTION_TYPE_USB:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_INITIATE_MIRRORING:I = 0x20

.field public static final FLAG_PIN_CONNECT:I = 0x2000

.field public static final FLAG_SKIP_PIN_NUMBER_CONFIRM:I = 0x4000

.field public static final MODE_DEX_ON_PC:I = 0x3

.field public static final MODE_NORMAL_MIRRORING:I = 0x0

.field public static final MODE_WATCH_CAMERA:I = 0x1

.field public static final MODE_WIRELESS_DEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiDisplayConfig"


# instance fields
.field private mConnectionType:I

.field private mDeviceName:Ljava/lang/String;

.field private mFlags:I

.field private mIpAddress:Ljava/lang/String;

.field private mMode:I

.field private mP2pMacAddress:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPrameterGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$2;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayConfig$2;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 92
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 99
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 110
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "connetionType"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "p2pMacAddress"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 92
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 99
    new-instance v1, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v1, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 121
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 125
    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 126
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 127
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 128
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v1, "connection-type"

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 92
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 99
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "initParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v1, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "getParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v2, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "setParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    sget-object v3, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 149
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v4, "initparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v4, "getparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v4, "setparams"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "p2pMacAddress"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 92
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 99
    new-instance v2, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v2, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    .line 114
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    .line 115
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 116
    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 117
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v1, "connection-type"

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 175
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    .line 176
    return-void
.end method

.method public addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V
    .registers 5
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;

    .line 195
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 196
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 198
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_15
    return-void
.end method

.method public addParameters(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    .line 211
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 213
    .local v2, "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v2    # "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    :cond_25
    goto :goto_10

    .line 218
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_26
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionType()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 277
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 8
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 363
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 364
    .local v0, "jArray":Lorg/json/JSONArray;
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 365
    .local v2, "param":Landroid/hardware/display/SemWifiDisplayParameter;
    const-string v3, "initparams"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 367
    :try_start_25
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_39} :catch_3a

    goto :goto_3e

    .line 368
    :catch_3a
    move-exception v3

    .line 369
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 370
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3e
    goto :goto_46

    .line 372
    :cond_3f
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 374
    .end local v2    # "param":Landroid/hardware/display/SemWifiDisplayParameter;
    :goto_46
    goto :goto_11

    .line 375
    :cond_47
    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    return v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayParameter;
    .registers 7
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 260
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 261
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    .local v0, "wifiDisplayParameterList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 263
    .local v2, "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 264
    return-object v2

    .line 266
    .end local v2    # "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    :cond_27
    goto :goto_10

    .line 268
    .end local v0    # "wifiDisplayParameterList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public isInitiateMirroringMode()Z
    .registers 2

    .line 342
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPinRequest()Z
    .registers 2

    .line 349
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSkipPinNumberConfirm()Z
    .registers 2

    .line 356
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public removeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 228
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 229
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 230
    .local v0, "wifiDisplayParameterList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 231
    .local v2, "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 233
    goto :goto_2b

    .line 235
    .end local v2    # "parameter":Landroid/hardware/display/SemWifiDisplayParameter;
    :cond_2a
    goto :goto_10

    .line 237
    .end local v0    # "wifiDisplayParameterList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_2b
    :goto_2b
    return-void
.end method

.method public setMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 184
    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    .line 185
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v1, "mode"

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 425
    const-string v0, "SemWifiDisplayConfig:: "

    .line 426
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p2pMacAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 435
    const-string v3, "initparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 436
    const-string v3, "getparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    .line 437
    const-string v3, "setparams"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 406
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v1, "initparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 414
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v1, "getparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 415
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v1, "setparams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 416
    return-void
.end method
