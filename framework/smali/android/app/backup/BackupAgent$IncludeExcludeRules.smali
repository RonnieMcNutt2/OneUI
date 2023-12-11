.class public Landroid/app/backup/BackupAgent$IncludeExcludeRules;
.super Ljava/lang/Object;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncludeExcludeRules"
.end annotation


# instance fields
.field private final mManifestExcludeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mManifestIncludeMap:Ljava/util/Map;
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


# direct methods
.method static bridge synthetic -$$Nest$mgetExcludeSet(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->getExcludeSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetIncludeMap(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->getIncludeMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;)V"
        }
    .end annotation

    .line 1468
    .local p1, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p2, "manifestExcludeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    .line 1470
    iput-object p2, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    .line 1471
    return-void
.end method

.method public static emptyRules()Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .registers 3

    .line 1476
    new-instance v0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v0
.end method

.method private getExcludeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    return-object v0
.end method

.method private getIncludeMap()Ljava/util/Map;
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

    .line 1480
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 1496
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1497
    return v0

    .line 1499
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 1502
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    .line 1503
    .local v2, "that":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    iget-object v3, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    iget-object v4, v2, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    iget-object v4, v2, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    .line 1504
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 1503
    :goto_2b
    return v0

    .line 1500
    .end local v2    # "that":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1490
    iget-object v0, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestIncludeMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->mManifestExcludeSet:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
