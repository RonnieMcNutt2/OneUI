.class public Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup$BackupScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathWithRequiredFlags"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mRequiredFlags:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "requiredFlags"    # I

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    .line 413
    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    .line 414
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredFlags()I
    .registers 2

    .line 421
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->mRequiredFlags:I

    return v0
.end method
