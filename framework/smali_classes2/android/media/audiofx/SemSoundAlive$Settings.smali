.class public Landroid/media/audiofx/SemSoundAlive$Settings;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public bandLevels:[S

.field public curPreset:S

.field public numBands:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    .line 798
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "settings"    # Ljava/lang/String;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    .line 808
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "=;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 810
    .local v1, "tokens":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, "settings: "

    if-lt v2, v3, :cond_132

    .line 813
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "key":Ljava/lang/String;
    const-string v3, "SemSoundAlive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 819
    :try_start_29
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 820
    const-string v3, "curPreset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_34} :catch_ff

    const-string v5, "invalid key name: "

    if-eqz v3, :cond_e8

    .line 823
    :try_start_38
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->curPreset:S

    .line 824
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 825
    const-string v3, "numBands"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 828
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    .line 829
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    iget-short v6, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    mul-int/lit8 v7, v6, 0x2

    if-ne v3, v7, :cond_ba

    .line 832
    new-array v3, v6, [S

    iput-object v3, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    .line 833
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_68
    iget-short v4, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    if-ge v3, v4, :cond_b8

    .line 834
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Level"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 838
    iget-object v4, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    aput-short v6, v4, v3

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 836
    :cond_a1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v4

    .line 842
    .end local v3    # "i":I
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_b8
    nop

    .line 843
    return-void

    .line 830
    :cond_ba
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 826
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_d1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 821
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_e8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_ff} :catch_ff

    .line 840
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/SemSoundAlive$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :catch_ff
    move-exception v3

    .line 841
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid value for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid settings for SemSoundAlive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 811
    .end local v2    # "key":Ljava/lang/String;
    :cond_132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemSoundAlive;curPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->curPreset:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";numBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget-short v2, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    if-ge v1, v2, :cond_50

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";band"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 857
    .end local v1    # "i":I
    :cond_50
    return-object v0
.end method
