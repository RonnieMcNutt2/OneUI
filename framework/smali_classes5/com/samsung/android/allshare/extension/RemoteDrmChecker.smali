.class public Lcom/samsung/android/allshare/extension/RemoteDrmChecker;
.super Ljava/lang/Object;
.source "RemoteDrmChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    }
.end annotation


# static fields
.field static final DRM_PROTECTED_ERROR:I = -0x1

.field static final DRM_PROTECTED_FALSE:I = 0x0

.field static final DRM_PROTECTED_TRUE:I = 0x1

.field static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field static final PR_PLUGIN_MIME:Ljava/lang/String; = "audio/vnd.ms-playready.media.pya"

.field static final WMA_PLUGIN_MIME:Ljava/lang/String; = "audio/x-ms-wma"

.field static final WMV_PLUGIN_MIME:Ljava/lang/String; = "video/x-ms-wmv"

.field private static final mTAG:Ljava/lang/String; = "RemoteDrmChecker"

.field private static final mTAG_CLASS:Ljava/lang/String; = " "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDrmChecked:Z

.field private mIsDrmFile:I

.field private final mPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPath(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDrmChecked(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDrmFile(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.samsung.android.allshare/drmchecker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method


# virtual methods
.method public isDrmFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "selectedItemUri"    # Ljava/lang/String;
    .param p2, "mExtension"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    const-string v1, "RemoteDrmChecker"

    if-nez p2, :cond_d

    if-nez p3, :cond_d

    .line 146
    const-string v2, " Invalid arg."

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v0

    .line 149
    :cond_d
    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_b0

    .line 155
    :cond_20
    const/4 v2, 0x0

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".wmv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".wma"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    :cond_3b
    if-eqz p3, :cond_aa

    .line 157
    const-string/jumbo v3, "video/x-ms-wmv"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 158
    const-string v3, "audio/x-ms-wma"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "audio/wav"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 159
    const-string v3, "audio/x-wav"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 160
    :cond_5e
    iput-boolean v2, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    .line 161
    new-instance v2, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;-><init>(Lcom/samsung/android/allshare/extension/RemoteDrmChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v2, "mDrmCheckThread":Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    invoke-virtual {v2}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->start()V

    .line 166
    const-wide/16 v3, 0x1388

    :try_start_6a
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->join(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 169
    goto :goto_72

    .line 167
    :catch_6e
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 170
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_72
    iget-boolean v3, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    if-nez v3, :cond_8f

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " thread time out : isDrmFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v0

    .line 174
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " returning isDrmFile = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    return v0

    .line 177
    .end local v2    # "mDrmCheckThread":Lcom/samsung/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    :cond_aa
    const-string v0, " return FALSE, immediately."

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v2

    .line 150
    :cond_b0
    :goto_b0
    const-string v2, " Invalid Url."

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v0
.end method
