.class public Landroid/media/SemUibcInputHandler;
.super Ljava/lang/Object;
.source "SemUibcInputHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemUibcInputHandler.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const-string v0, "library loading is failed"

    const-string v1, "SemUibcInputHandler.java"

    :try_start_4
    const-string v2, "try to load libuibc.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v2, "uibc"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_e} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_18

    .line 36
    :catch_f
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 34
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_18
    nop

    .line 39
    :goto_19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static handleKeyDown(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key1"    # I
    .param p2, "key2"    # I

    .line 199
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDown(II)V

    .line 201
    return-void
.end method

.method public static native handleKeyDownASCII(II)V
.end method

.method public static handleKeyDownASCII(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asciiKey1"    # I
    .param p2, "asciiKey2"    # I

    .line 218
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDownASCII(II)V

    .line 220
    return-void
.end method

.method public static handleKeyUp(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key1"    # I
    .param p2, "key2"    # I

    .line 212
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUp(II)V

    .line 214
    return-void
.end method

.method public static native handleKeyUpASCII(II)V
.end method

.method public static handleKeyUpASCII(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asciiKey1"    # I
    .param p2, "asciiKey2"    # I

    .line 224
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUpASCII(II)V

    .line 226
    return-void
.end method

.method public static handlePenEvent(Landroid/content/Context;IIIFFF)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "states"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "pressure"    # F
    .param p5, "tilt"    # F
    .param p6, "orientation"    # F

    .line 141
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static/range {p1 .. p6}, Landroid/media/SemUibcInputHandler;->penEvent(IIIFFF)V

    .line 143
    return-void
.end method

.method public static native handleRotate(II)V
.end method

.method public static handleRotate(Landroid/content/Context;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "radians"    # I
    .param p2, "fraction"    # I

    .line 236
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->rotate(II)V

    .line 238
    return-void
.end method

.method public static native handleScroll(FF)V
.end method

.method public static handleScroll(Landroid/content/Context;FF)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "X"    # F
    .param p2, "Y"    # F

    .line 230
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->scroll(FF)V

    .line 232
    return-void
.end method

.method public static handleTouchDown(Landroid/content/Context;I[I[I[I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "X"    # [I
    .param p4, "Y"    # [I

    .line 171
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchDown(I[I[I[I)V

    .line 173
    return-void
.end method

.method public static handleTouchMove(Landroid/content/Context;I[I[I[I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "moveX"    # [I
    .param p4, "moveY"    # [I

    .line 156
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchMove(I[I[I[I)V

    .line 158
    return-void
.end method

.method public static handleTouchUp(Landroid/content/Context;I[I[I[I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "X"    # [I
    .param p4, "Y"    # [I

    .line 186
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchUp(I[I[I[I)V

    .line 188
    return-void
.end method

.method public static isActive()Z
    .registers 4

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "isActive":Z
    :try_start_1
    invoke-static {}, Landroid/media/SemUibcInputHandler;->isActiveUIBC()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 103
    goto :goto_f

    .line 101
    :catch_7
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "SemUibcInputHandler.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :goto_f
    return v0
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static isPenAvailable()Z
    .registers 4

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "isPenAvailable":Z
    :try_start_1
    invoke-static {}, Landroid/media/SemUibcInputHandler;->isPenEnabled()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 118
    goto :goto_f

    .line 116
    :catch_7
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "SemUibcInputHandler.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isPenAvailable()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :goto_f
    return v0
.end method

.method public static native isPenEnabled()Z
.end method

.method private static native keyDown(II)V
.end method

.method private static native keyDownASCII(II)V
.end method

.method private static native keyUp(II)V
.end method

.method private static native keyUpASCII(II)V
.end method

.method private static native penEvent(IIIFFF)V
.end method

.method private static native rotate(II)V
.end method

.method private static native scroll(FF)V
.end method

.method private static native touchDown(I[I[I[I)V
.end method

.method private static native touchMove(I[I[I[I)V
.end method

.method private static native touchUp(I[I[I[I)V
.end method
