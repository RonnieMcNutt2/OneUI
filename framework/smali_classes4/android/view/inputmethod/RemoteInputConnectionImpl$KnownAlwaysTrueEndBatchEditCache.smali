.class final Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
.super Ljava/lang/Object;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownAlwaysTrueEndBatchEditCache"
.end annotation


# static fields
.field private static volatile sArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sElement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 140
    sput-object p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    .line 141
    return-void

    .line 144
    :cond_7
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 145
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_d

    array-length v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 146
    .local v1, "arraySize":I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 147
    .local v2, "newArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_1c

    .line 148
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 150
    .end local v3    # "i":I
    :cond_1c
    aput-object p0, v2, v1

    .line 153
    sput-object v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 154
    return-void
.end method

.method static contains(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)Z"
        }
    .end annotation

    .line 113
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 114
    return v1

    .line 116
    :cond_6
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 117
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 118
    return v2

    .line 120
    :cond_c
    array-length v3, v0

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    aget-object v5, v0, v4

    .line 121
    .local v5, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, p0, :cond_15

    .line 122
    return v1

    .line 120
    .end local v5    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 125
    :cond_18
    return v2
.end method
