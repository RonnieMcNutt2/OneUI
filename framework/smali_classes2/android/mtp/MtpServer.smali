.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final sID_LEN_BYTES:I = 0x10

.field private static final sID_LEN_STR:I = 0x20


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mNativeContext:J

.field private final mOnTerminate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "controlFd"    # Ljava/io/FileDescriptor;
    .param p3, "usePtp"    # Z
    .param p4, "onTerminate"    # Ljava/lang/Runnable;
    .param p5, "deviceInfoManufacturer"    # Ljava/lang/String;
    .param p6, "deviceInfoModel"    # Ljava/lang/String;
    .param p7, "deviceInfoDeviceVersion"    # Ljava/lang/String;

    .line 56
    move-object v8, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase;

    iput-object v0, v8, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 58
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, v8, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v8, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 61
    const-string v9, "mtp-cfg"

    .line 62
    .local v9, "strID_PREFS_NAME":Ljava/lang/String;
    const-string v10, "mtp-id"

    .line 63
    .local v10, "strID_PREFS_KEY":Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "strRandomId":Ljava/lang/String;
    nop

    .line 67
    const-string v2, "mtp-cfg"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 68
    .local v11, "sharedPref":Landroid/content/SharedPreferences;
    const-string v0, "mtp-id"

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 69
    const/4 v2, 0x0

    invoke-interface {v11, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_59

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_40

    .line 74
    const/4 v1, 0x0

    goto :goto_59

    .line 77
    :cond_40
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_56

    .line 79
    const/4 v1, 0x0

    .line 80
    goto :goto_59

    .line 77
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 86
    .end local v2    # "ii":I
    :cond_59
    :goto_59
    if-nez v1, :cond_6c

    .line 87
    invoke-direct {p0}, Landroid/mtp/MtpServer;->getRandId()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v12, v1

    goto :goto_6d

    .line 86
    :cond_6c
    move-object v12, v1

    .line 91
    .end local v1    # "strRandomId":Ljava/lang/String;
    .local v12, "strRandomId":Ljava/lang/String;
    :goto_6d
    move-object v7, v12

    .line 93
    .local v7, "deviceInfoSerialNumber":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object v0, p1

    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 102
    return-void
.end method

.method private getRandId()Ljava/lang/String;
    .registers 4

    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 106
    .local v0, "randomVal":Ljava/util/Random;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 108
    .local v1, "randomBytes":[B
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 109
    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_info_changed(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 142
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 143
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 3
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 146
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 147
    return-void
.end method

.method public run()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 120
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 121
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    .line 122
    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .registers 2
    .param p1, "property"    # I

    .line 138
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 139
    return-void
.end method

.method public sendObjectAdded(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 126
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 127
    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 134
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_info_changed(I)V

    .line 135
    return-void
.end method

.method public sendObjectRemoved(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 131
    return-void
.end method

.method public start()V
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 114
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method
