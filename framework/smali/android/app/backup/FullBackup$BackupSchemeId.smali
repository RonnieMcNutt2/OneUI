.class Landroid/app/backup/FullBackup$BackupSchemeId;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupSchemeId"
.end annotation


# instance fields
.field final mBackupDestination:I

.field final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupDestination"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    .line 135
    iput p2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 136
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 146
    return v0

    .line 148
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 151
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/backup/FullBackup$BackupSchemeId;

    .line 152
    .local v2, "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 152
    :goto_33
    return v0

    .line 149
    .end local v2    # "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    :cond_34
    :goto_34
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
