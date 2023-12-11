.class public final synthetic Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/content/FileSystemProvider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/content/FileSystemProvider;->$r8$lambda$vxAN9-98LGIWC6c4h0Q6rgsVdeM(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method
