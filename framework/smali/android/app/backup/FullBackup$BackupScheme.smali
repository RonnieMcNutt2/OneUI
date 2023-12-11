.class public Landroid/app/backup/FullBackup$BackupScheme;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupScheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    }
.end annotation


# static fields
.field private static final TAG_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"


# instance fields
.field private final CACHE_DIR:Ljava/io/File;

.field private final DATABASE_DIR:Ljava/io/File;

.field private final DEVICE_CACHE_DIR:Ljava/io/File;

.field private final DEVICE_DATABASE_DIR:Ljava/io/File;

.field private final DEVICE_FILES_DIR:Ljava/io/File;

.field private final DEVICE_NOBACKUP_DIR:Ljava/io/File;

.field private final DEVICE_ROOT_DIR:Ljava/io/File;

.field private final DEVICE_SHAREDPREF_DIR:Ljava/io/File;

.field private final EXTERNAL_DIR:Ljava/io/File;

.field private final FILES_DIR:Ljava/io/File;

.field private final NOBACKUP_DIR:Ljava/io/File;

.field private final ROOT_DIR:Ljava/io/File;

.field private final SHAREDPREF_DIR:Ljava/io/File;

.field final mBackupDestination:I

.field final mDataExtractionRules:I

.field mExcludes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation
.end field

.field final mFullBackupContent:I

.field mIncludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsUsingNewScheme:Ljava/lang/Boolean;

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final mPackageName:Ljava/lang/String;

.field private mRequiredTransportFlags:Ljava/lang/Integer;

.field final mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupDestination"    # I

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 442
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    .line 443
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    .line 444
    iput p2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    .line 445
    const-string/jumbo v2, "storage"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 452
    .local v2, "ceContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    .line 453
    const-string v3, "foo"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    .line 454
    invoke-virtual {v2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    .line 455
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    .line 456
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    .line 457
    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 460
    .local v4, "deContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    .line 461
    invoke-virtual {v4, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    .line 462
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    .line 463
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    .line 464
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    .line 465
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    .line 467
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_9c

    .line 468
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    goto :goto_9e

    .line 470
    :cond_9c
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    .line 472
    :goto_9e
    return-void
.end method

.method private extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "domain"    # Ljava/io/File;
    .param p2, "filePathFromXml"    # Ljava/lang/String;

    .line 939
    if-nez p2, :cond_4

    .line 941
    const-string p2, ""

    .line 943
    :cond_4
    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "...resolved \""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BackupXmlParserLogging"

    if-eqz v0, :cond_41

    .line 944
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", but the \"..\" path is not permitted; skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_40
    return-object v3

    .line 950
    :cond_41
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 951
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", which contains the invalid \"//\" sequence; skipping."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_75
    return-object v3

    .line 957
    :cond_76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getConfigSectionForBackupDestination(I)Ljava/lang/String;
    .registers 3
    .param p1, "backupDestination"    # I

    .line 630
    packed-switch p1, :pswitch_data_c

    .line 636
    const/4 v0, 0x0

    return-object v0

    .line 634
    :pswitch_5
    const-string v0, "device-transfer"

    return-object v0

    .line 632
    :pswitch_8
    const-string v0, "cloud-backup"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 965
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 966
    return-object v1

    .line 968
    :cond_8
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 969
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    return-object v0

    .line 970
    :cond_13
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 971
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    return-object v0

    .line 972
    :cond_1e
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 973
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    return-object v0

    .line 974
    :cond_2a
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 975
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    return-object v0

    .line 976
    :cond_36
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 977
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    return-object v0

    .line 978
    :cond_41
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 979
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    return-object v0

    .line 980
    :cond_4c
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 981
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    return-object v0

    .line 982
    :cond_57
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 983
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    return-object v0

    .line 984
    :cond_62
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 985
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    return-object v0

    .line 987
    :cond_6d
    return-object v1
.end method

.method private getParserForResource(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    .line 643
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 644
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 642
    return-object v0
.end method

.method private getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 861
    .local p2, "maybeRequiredFlags":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 864
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 867
    :cond_11
    const-string v0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 870
    nop

    .line 871
    const/4 v0, 0x0

    const-string/jumbo v1, "requireFlags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsFromString(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 874
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private getRequiredFlagsFromString(Ljava/lang/String;)I
    .registers 10
    .param p1, "requiredFlags"    # Ljava/lang/String;

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "flags":I
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_6f

    .line 841
    :cond_b
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "flagsStr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_6e

    aget-object v5, v1, v4

    .line 843
    .local v5, "f":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_70

    :cond_1f
    goto :goto_3e

    :sswitch_20
    const-string v6, "deviceToDeviceTransfer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_3f

    :sswitch_2a
    const-string v6, "clientSideEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v6, v3

    goto :goto_3f

    :sswitch_34
    const-string v6, "fakeClientSideEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x2

    goto :goto_3f

    :goto_3e
    const/4 v6, -0x1

    :goto_3f
    packed-switch v6, :pswitch_data_7e

    goto :goto_4d

    .line 851
    :pswitch_43
    const/high16 v6, -0x80000000

    or-int/2addr v0, v6

    goto :goto_4d

    .line 848
    :pswitch_47
    or-int/lit8 v0, v0, 0x2

    .line 849
    goto :goto_6b

    .line 845
    :pswitch_4a
    or-int/lit8 v0, v0, 0x1

    .line 846
    goto :goto_6b

    .line 853
    :goto_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized requiredFlag provided, value: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FullBackup"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v5    # "f":Ljava/lang/String;
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 856
    :cond_6e
    return v0

    .line 839
    .end local v1    # "flagsStr":[Ljava/lang/String;
    :cond_6f
    :goto_6f
    return v0

    :sswitch_data_70
    .sparse-switch
        0x1cc617da -> :sswitch_34
        0x595908e5 -> :sswitch_2a
        0x7363e232 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

.method private getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "xmlDomain"    # Ljava/lang/String;

    .line 908
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 909
    const-string/jumbo v0, "r"

    return-object v0

    .line 910
    :cond_d
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 911
    const-string v0, "f"

    return-object v0

    .line 912
    :cond_18
    const-string v0, "database"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 913
    const-string v0, "db"

    return-object v0

    .line 914
    :cond_23
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 915
    const-string/jumbo v0, "sp"

    return-object v0

    .line 916
    :cond_30
    const-string v0, "device_root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 917
    const-string v0, "d_r"

    return-object v0

    .line 918
    :cond_3b
    const-string v0, "device_file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 919
    const-string v0, "d_f"

    return-object v0

    .line 920
    :cond_46
    const-string v0, "device_database"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 921
    const-string v0, "d_db"

    return-object v0

    .line 922
    :cond_51
    const-string v0, "device_sharedpref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 923
    const-string v0, "d_sp"

    return-object v0

    .line 924
    :cond_5c
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 925
    const-string v0, "ef"

    return-object v0

    .line 927
    :cond_67
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_f

    .line 389
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_16

    .line 390
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    goto :goto_16

    .line 393
    :cond_f
    const-string v0, "FullBackup"

    const-string v1, "Unable to access Storage Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method private declared-synchronized isUsingNewScheme()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 553
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 554
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 557
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 552
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logParsingResults(Ljava/util/Set;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 800
    .local p1, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p2, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 801
    const-string v0, "\n"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v2, "Xml resource parsing complete."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v2, "Final tally."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v2, "Includes:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, " requiredFlags: "

    const-string v4, " path: "

    if-eqz v2, :cond_2d

    .line 806
    const-string v2, "  ...nothing specified (This means the entirety of app data minus excludes)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 810
    :cond_2d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 811
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 813
    .local v7, "includeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 814
    invoke-virtual {v7}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 813
    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v7    # "includeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    goto :goto_67

    .line 816
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    :cond_98
    goto :goto_35

    .line 819
    :cond_99
    :goto_99
    const-string v2, "Excludes:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 821
    const-string v2, "  ...nothing to exclude."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 823
    :cond_aa
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 824
    .local v5, "excludeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 825
    invoke-virtual {v5}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 824
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v5    # "excludeData":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    goto :goto_ae

    .line 829
    :cond_df
    :goto_df
    const-string v2, "  "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v2, "===================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_ec
    return-void
.end method

.method private maybeParseBackupSchemeLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 562
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    .line 563
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    .line 564
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 565
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 567
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    if-nez v0, :cond_32

    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    if-nez v0, :cond_32

    .line 569
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 570
    const-string v0, "android:fullBackupContent - \"true\""

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 574
    :cond_32
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found xml scheme: android:fullBackupContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; android:dataExtractionRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_5c
    :try_start_5c
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mBackupDestination:I

    invoke-direct {p0, v0}, Landroid/app/backup/FullBackup$BackupScheme;->parseSchemeForBackupDestination(I)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_61} :catch_63

    .line 585
    nop

    .line 587
    :cond_62
    :goto_62
    return-void

    .line 582
    :catch_63
    move-exception v0

    .line 584
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 881
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string v0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 882
    invoke-direct {p0, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "domainToken":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 884
    .local v1, "includeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    if-nez v1, :cond_21

    .line 885
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 886
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_21
    return-object v1

    .line 889
    .end local v0    # "domainToken":Ljava/lang/String;
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_22
    const-string v0, "exclude"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 890
    return-object p2

    .line 893
    :cond_2f
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag found in xml \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"; aborting operation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_58
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised tag in backup criteria xml ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "configSection"    # Ljava/lang/String;

    .line 676
    const-string v0, "cloud-backup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 677
    const/4 v0, 0x0

    const-string v1, "disableIfNoEncryptionCapabilities"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "encryptionAttribute":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 680
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    .line 683
    .end local v0    # "encryptionAttribute":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method private parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V
    .registers 24
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "endingTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 725
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p4, "maybeRequiredFlags":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "event":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d4

    .line 726
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 727
    packed-switch v3, :pswitch_data_1de

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 729
    :pswitch_23
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/FullBackup$BackupScheme;->validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 730
    const-string v2, "domain"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "domainFromXml":Ljava/lang/String;
    invoke-direct {v0, v2}, Landroid/app/backup/FullBackup$BackupScheme;->getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 732
    .local v6, "domainDirectory":Ljava/io/File;
    const/4 v7, 0x2

    const-string v8, "BackupXmlParserLogging"

    if-nez v6, :cond_76

    .line 733
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...parsing \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\": domain=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" invalid; skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 733
    :cond_6e
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 739
    :cond_76
    nop

    .line 741
    const-string/jumbo v9, "path"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 740
    invoke-direct {v0, v6, v5}, Landroid/app/backup/FullBackup$BackupScheme;->extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 742
    .local v5, "canonicalFile":Ljava/io/File;
    if-nez v5, :cond_8c

    .line 743
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto/16 :goto_1c7

    .line 746
    :cond_8c
    move-object/from16 v9, p4

    invoke-direct {v0, v1, v9}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredFlagsForRule(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Optional;)I

    move-result v10

    .line 749
    .local v10, "requiredFlags":I
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct {v0, v1, v11, v12, v2}, Landroid/app/backup/FullBackup$BackupScheme;->parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    .line 751
    .local v13, "activeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_e0

    .line 754
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "...parsed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for domain \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\", requiredFlags + \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_e0
    const-string v14, "database"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, ". Ignore if nonexistent."

    const-string v7, "...automatically generated "

    if-eqz v14, :cond_170

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_170

    .line 764
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "-journal"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "canonicalJournalPath":Ljava/lang/String;
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v14, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_130

    .line 769
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_130
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    move-object/from16 v16, v0

    .end local v0    # "canonicalJournalPath":Ljava/lang/String;
    .local v16, "canonicalJournalPath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "-wal"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "canonicalWalPath":Ljava/lang/String;
    new-instance v14, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v14, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    const/4 v14, 0x2

    invoke-static {v8, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_170

    .line 777
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "canonicalWalPath":Ljava/lang/String;
    .end local v16    # "canonicalJournalPath":Ljava/lang/String;
    :cond_170
    const-string/jumbo v0, "sharedpref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 784
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".xml"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "canonicalXmlPath":Ljava/lang/String;
    new-instance v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    invoke-direct {v1, v0, v10}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    const/4 v1, 0x2

    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "canonicalXmlPath":Ljava/lang/String;
    .end local v2    # "domainFromXml":Ljava/lang/String;
    .end local v5    # "canonicalFile":Ljava/io/File;
    .end local v6    # "domainDirectory":Ljava/io/File;
    .end local v10    # "requiredFlags":I
    .end local v13    # "activeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_1c7
    :goto_1c7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 726
    :cond_1cd
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    goto :goto_1dc

    .line 725
    :cond_1d4
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    .line 796
    :goto_1dc
    return-void

    nop

    :pswitch_data_1de
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch
.end method

.method private parseSchemeForBackupDestination(I)V
    .registers 7
    .param p1, "backupDestination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->getConfigSectionForBackupDestination(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "configSection":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given backup destination isn\'t supported by backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullBackup"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 598
    :cond_1f
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mDataExtractionRules:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    .line 602
    invoke-direct {p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 603
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_28
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    invoke-virtual {p0, v1, v0, v3, v4}, Landroid/app/backup/FullBackup$BackupScheme;->parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Z

    move-result v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_3e

    .line 605
    .local v3, "isSectionPresent":Z
    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 606
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_35
    if-eqz v3, :cond_4a

    .line 608
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 609
    return-void

    .line 602
    .end local v3    # "isSectionPresent":Z
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_3e
    move-exception v2

    if-eqz v1, :cond_49

    :try_start_41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v2

    .line 613
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4a
    if-ne p1, v2, :cond_5c

    .line 614
    const-wide/32 v3, 0xac2922c

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 615
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIsUsingNewScheme:Ljava/lang/Boolean;

    .line 616
    return-void

    .line 619
    :cond_5c
    iget v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-eqz v1, :cond_7d

    .line 621
    invoke-direct {p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;->getParserForResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 622
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :try_start_64
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/FullBackup$BackupScheme;->parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_71

    .line 623
    if-eqz v1, :cond_7d

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7d

    .line 621
    :catchall_71
    move-exception v2

    if-eqz v1, :cond_7c

    :try_start_74
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw v2

    .line 625
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7d
    :goto_7d
    return-void
.end method

.method private sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    const-string/jumbo v0, "shared/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "volume":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 380
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 381
    .local v2, "volNum":I
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v3, v3

    if-ge v2, v3, :cond_23

    .line 382
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 384
    :cond_23
    const/4 v3, 0x0

    return-object v3
.end method

.method private validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 996
    if-nez p1, :cond_3

    .line 997
    return-void

    .line 999
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    :cond_e
    goto :goto_23

    :sswitch_f
    const-string v1, "include"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_24

    :sswitch_19
    const-string v1, "exclude"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_24

    :goto_23
    const/4 v0, -0x1

    :goto_24
    packed-switch v0, :pswitch_data_74

    .line 1014
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A valid tag is one of \"<include/>\" or \"<exclude/>. You provided \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :pswitch_4a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_52

    goto :goto_61

    .line 1009
    :cond_52
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "At most 2 tag attributes allowed for \"exclude\" tag (\"domain\" & \"path\"."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :pswitch_5a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_62

    .line 1017
    :goto_61
    return-void

    .line 1002
    :cond_62
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "At most 3 tag attributes allowed for \"include\" tag (\"domain\" & \"path\" & optional \"requiredFlags\")."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_6a
    .sparse-switch
        -0x4ebf2226 -> :sswitch_19
        0x73c954a8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_4a
    .end packed-switch
.end method

.method private verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 700
    .local v0, "event":I
    :goto_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 701
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 704
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 709
    const-string v2, "BackupXmlParserLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 710
    const-string v1, "\n"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v1, "===================================================="

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; parsing xml resource."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v1, ""

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_4c
    return-void

    .line 705
    :cond_4d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xml file didn\'t start with correct tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ). Found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized getRequiredTransportFlags()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 545
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 548
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mRequiredTransportFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 543
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isFullBackupContentEnabled()Z
    .registers 3

    .line 504
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    if-gez v0, :cond_14

    .line 506
    const/4 v0, 0x2

    const-string v1, "BackupXmlParserLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 507
    const-string v0, "android:fullBackupContent - \"false\""

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_12
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method isFullBackupEnabled(I)Z
    .registers 6
    .param p1, "transportFlags"    # I

    .line 476
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 477
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getRequiredTransportFlags()I

    move-result v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_b} :catch_17

    .line 480
    .local v1, "requiredTransportFlags":I
    and-int v2, p1, v1

    if-ne v2, v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 485
    .end local v1    # "requiredTransportFlags":I
    :cond_11
    nop

    .line 487
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    return v0

    .line 482
    :catch_17
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to interpret the backup scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FullBackup"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return v0
.end method

.method isFullRestoreEnabled()Z
    .registers 4

    .line 492
    :try_start_0
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isUsingNewScheme()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_e

    if-eqz v0, :cond_8

    .line 493
    const/4 v0, 0x1

    return v0

    .line 498
    :cond_8
    nop

    .line 500
    invoke-virtual {p0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v0

    return v0

    .line 495
    :catch_e
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to interpret the backup scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullBackup"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 535
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 536
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 538
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 534
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 523
    :try_start_1
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 524
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    .line 526
    .end local p0    # "this":Landroid/app/backup/FullBackup$BackupScheme;
    :cond_8
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 522
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 690
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string v0, "full-backup-content"

    invoke-direct {p0, p1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    const-string v6, "full-backup-content"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, p2, p3}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 695
    return-void
.end method

.method public parseNewBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Z
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "configSection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 653
    .local p3, "excludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p4, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const-string v0, "data-extraction-rules"

    invoke-direct {p0, p1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->verifyTopLevelTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    .line 658
    .local v0, "isSectionPresent":Z
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "event":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_32

    .line 659
    const/4 v1, 0x2

    if-ne v2, v1, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 660
    goto :goto_6

    .line 663
    :cond_1c
    const/4 v0, 0x1

    .line 665
    invoke-direct {p0, p1, p2}, Landroid/app/backup/FullBackup$BackupScheme;->parseRequiredTransportFlags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 666
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/app/backup/FullBackup$BackupScheme;->parseRules(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/util/Optional;Ljava/lang/String;)V

    goto :goto_6

    .line 669
    :cond_32
    invoke-direct {p0, p3, p4}, Landroid/app/backup/FullBackup$BackupScheme;->logParsingResults(Ljava/util/Set;Ljava/util/Map;)V

    .line 671
    return v0
.end method

.method tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "domainToken"    # Ljava/lang/String;

    .line 325
    const-string v0, "FullBackup"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 326
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_12
    const-string v2, "db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 328
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_21
    const-string/jumbo v2, "r"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 330
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :cond_31
    const-string/jumbo v2, "sp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 332
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_41
    const-string v2, "c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 334
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_50
    const-string/jumbo v2, "nb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 336
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_60
    const-string v2, "d_f"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 338
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_6f
    const-string v2, "d_db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 340
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_7e
    const-string v2, "d_r"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 342
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_8d
    const-string v2, "d_sp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 344
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_9c
    const-string v2, "d_c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 346
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_ab
    const-string v2, "d_nb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 348
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_ba
    const-string v2, "ef"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 350
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    if-eqz v2, :cond_cb

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_cb
    return-object v1

    .line 355
    :cond_cc
    const-string/jumbo v2, "shared/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 356
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_da
    const-string v2, "/storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 358
    return-object p1

    .line 359
    :cond_e3
    const-string v2, "ef_s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "specificPath":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "specificRestorePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .end local v3    # "specificRestorePath":Ljava/lang/String;
    .local v0, "specificRestorePath":Ljava/lang/String;
    return-object v0

    .line 367
    .end local v0    # "specificRestorePath":Ljava/lang/String;
    .end local v2    # "specificPath":Ljava/lang/String;
    :cond_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_136} :catch_137

    .line 368
    return-object v1

    .line 369
    :catch_137
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading directory for domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v1
.end method
