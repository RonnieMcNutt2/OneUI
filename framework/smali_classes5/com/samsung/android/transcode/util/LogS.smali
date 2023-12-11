.class public Lcom/samsung/android/transcode/util/LogS;
.super Ljava/lang/Object;
.source "LogS.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DEBUG_FILE:Ljava/lang/String; = "/storage/emulated/0/DCIM/transcodelib.debug"

.field public static final TAG:Ljava/lang/String; = "TranscodeLib"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/DCIM/transcodelib.debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/transcode/util/LogS;->DEBUG:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/samsung/android/transcode/util/LogS;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 37
    :cond_8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_b
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static stackTrace(Ljava/lang/String;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "stacktrace":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 56
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    .line 57
    .local v2, "len":I
    const/4 v3, 0x2

    .local v3, "x":I
    :goto_10
    if-ge v3, v2, :cond_24

    .line 58
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 60
    .end local v3    # "x":I
    :cond_24
    const-string v3, "------------ Stacktrace ---------------"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/samsung/android/transcode/util/LogS;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 29
    :cond_8
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_b
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
