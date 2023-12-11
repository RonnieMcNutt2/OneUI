.class public Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMediaStoreThread"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/io/File;)V
    .registers 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "f"    # Ljava/io/File;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p1, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->resolver:Landroid/content/ContentResolver;

    .line 715
    iput-object p2, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->file:Ljava/io/File;

    .line 716
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 719
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start scan files"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 723
    iget-object v0, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 724
    .local v0, "parentFile":Ljava/io/File;
    if-eqz v0, :cond_32

    .line 725
    iget-object v1, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 727
    .end local v0    # "parentFile":Ljava/io/File;
    :cond_32
    goto :goto_3a

    .line 728
    :cond_33
    iget-object v0, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;->file:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 730
    :goto_3a
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish scan files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void
.end method
