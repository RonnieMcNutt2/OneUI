.class public final enum Lcom/samsung/android/allshare/ERROR;
.super Ljava/lang/Enum;
.source "ERROR.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/ERROR;

.field public static final enum BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum DELETED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum FAIL:Lcom/samsung/android/allshare/ERROR;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

.field public static final enum INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

.field public static final enum INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

.field public static final enum NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

.field public static final enum NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

.field public static final enum PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum SUCCESS:Lcom/samsung/android/allshare/ERROR;

.field public static final enum TIME_OUT:Lcom/samsung/android/allshare/ERROR;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/ERROR;
    .registers 19

    .line 23
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    sget-object v6, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    sget-object v9, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    sget-object v10, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    sget-object v11, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    sget-object v12, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    sget-object v13, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    sget-object v14, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    sget-object v15, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    sget-object v16, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    sget-object v17, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    sget-object v18, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    filled-new-array/range {v0 .. v18}, [Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    .line 34
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "OUT_OF_MEMORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    .line 40
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 46
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    .line 51
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_STATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    .line 59
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "SERVICE_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 65
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 72
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "BAD_RESPONSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 78
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NETWORK_NOT_AVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    .line 83
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "CONTENT_NOT_AVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    .line 89
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_DEVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    .line 95
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    .line 100
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "PERMISSION_NOT_ALLOWED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    .line 105
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "TIME_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    .line 111
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "ITEM_NOT_EXIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    .line 117
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "DELETED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    .line 122
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FRAMEWORK_NOT_INSTALLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    .line 127
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 133
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    .line 23
    invoke-static {}, Lcom/samsung/android/allshare/ERROR;->$values()[Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 152
    if-nez p0, :cond_5

    .line 153
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 155
    :cond_5
    const-string v0, "SUCCESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 157
    :cond_10
    const-string v0, "OUT_OF_MEMORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 158
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 159
    :cond_1b
    const-string v0, "INVALID_ARGUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 160
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 161
    :cond_26
    const-string v0, "BAD_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 162
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 163
    :cond_31
    const-string v0, "CONTENT_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 164
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 165
    :cond_3c
    const-string v0, "DELETED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 166
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 167
    :cond_47
    const-string v0, "FAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 168
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 169
    :cond_52
    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 171
    :cond_5d
    const-string v0, "FRAMEWORK_NOT_INSTALLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 172
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 173
    :cond_68
    const-string v0, "INVALID_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 174
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 175
    :cond_73
    const-string v0, "INVALID_OBJECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 176
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 177
    :cond_7e
    const-string v0, "INVALID_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 178
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 179
    :cond_89
    const-string v0, "ITEM_NOT_EXIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 180
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 181
    :cond_94
    const-string v0, "NETWORK_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 182
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 183
    :cond_9f
    const-string v0, "NO_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 184
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 185
    :cond_aa
    const-string v0, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 186
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 187
    :cond_b5
    const-string v0, "PERMISSION_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 188
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 189
    :cond_c0
    const-string v0, "SERVICE_NOT_CONNECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 190
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 191
    :cond_cb
    const-string v0, "TIME_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 192
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 194
    :cond_d6
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/samsung/android/allshare/ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/ERROR;
    .registers 1

    .line 23
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    return-object v0
.end method
