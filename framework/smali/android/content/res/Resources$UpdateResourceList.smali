.class Landroid/content/res/Resources$UpdateResourceList;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateResourceList"
.end annotation


# instance fields
.field resourceId:I

.field value:Landroid/util/TypedValue;


# direct methods
.method constructor <init>(ILandroid/util/TypedValue;)V
    .registers 3
    .param p1, "resourceId"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .line 2890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2891
    iput p1, p0, Landroid/content/res/Resources$UpdateResourceList;->resourceId:I

    .line 2892
    iput-object p2, p0, Landroid/content/res/Resources$UpdateResourceList;->value:Landroid/util/TypedValue;

    .line 2893
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2895
    const/4 v0, 0x0

    .line 2896
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 2898
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    const-string/jumbo v2, "null"

    .line 2899
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/Resources$UpdateResourceList;->value:Landroid/util/TypedValue;

    if-eqz v3, :cond_10

    .line 2900
    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2902
    :cond_10
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceCount()I

    move-result v3

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_88

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, ".webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 2903
    :cond_39
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsRlistWriteLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_d4
    .catchall {:try_start_2 .. :try_end_3e} :catchall_d2

    .line 2904
    :try_start_3e
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceList()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Landroid/content/res/Resources$UpdateResourceList;->resourceId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2905
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_85

    .line 2906
    :try_start_4c
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Landroid/content/res/Resources;->-$$Nest$sfputsResourceCount(I)V

    .line 2907
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 2908
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "rList"

    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 2909
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 2910
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsRlistWriteLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_76} :catch_d4
    .catchall {:try_start_4c .. :try_end_76} :catchall_d2

    .line 2911
    :try_start_76
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2912
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    .line 2913
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_d4
    .catchall {:try_start_7e .. :try_end_81} :catchall_d2

    goto :goto_88

    .line 2912
    :catchall_82
    move-exception v4

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :try_start_84
    throw v4
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_d4
    .catchall {:try_start_84 .. :try_end_85} :catchall_d2

    .line 2905
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :catchall_85
    move-exception v4

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :try_start_87
    throw v4
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_d4
    .catchall {:try_start_87 .. :try_end_88} :catchall_d2

    .line 2920
    .end local v2    # "filename":Ljava/lang/String;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :cond_88
    :goto_88
    if-eqz v1, :cond_ac

    .line 2921
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_ac

    .line 2923
    :catch_8e
    move-exception v2

    .line 2924
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 2925
    .end local v2    # "e":Ljava/io/IOException;
    :cond_ac
    :goto_ac
    nop

    .line 2927
    :goto_ad
    if-eqz v0, :cond_d1

    .line 2928
    :try_start_af
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_d1

    .line 2930
    :catch_b3
    move-exception v2

    .line 2931
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_bb
    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_110

    .line 2932
    :cond_d1
    :goto_d1
    goto :goto_110

    .line 2919
    :catchall_d2
    move-exception v2

    goto :goto_111

    .line 2916
    :catch_d4
    move-exception v2

    .line 2917
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d5
    const-string v3, "Resources"

    const-string v4, "An exception occurred : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_d2

    .line 2920
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_100

    .line 2921
    :try_start_de
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_100

    .line 2923
    :catch_e2
    move-exception v2

    .line 2924
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 2925
    .end local v2    # "e":Ljava/io/IOException;
    :cond_100
    :goto_100
    nop

    .line 2927
    :goto_101
    if-eqz v0, :cond_d1

    .line 2928
    :try_start_103
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_d1

    .line 2930
    :catch_107
    move-exception v2

    .line 2931
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_bb

    .line 2934
    .end local v2    # "e":Ljava/io/IOException;
    :goto_110
    return-void

    .line 2920
    :goto_111
    if-eqz v1, :cond_135

    .line 2921
    :try_start_113
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    goto :goto_135

    .line 2923
    :catch_117
    move-exception v3

    .line 2924
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException occured at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 2925
    .end local v3    # "e":Ljava/io/IOException;
    :cond_135
    :goto_135
    nop

    .line 2927
    :goto_136
    if-eqz v0, :cond_15a

    .line 2928
    :try_start_138
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13c

    goto :goto_15a

    .line 2930
    :catch_13c
    move-exception v3

    .line 2931
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException occured at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 2932
    .end local v3    # "e":Ljava/io/IOException;
    :cond_15a
    :goto_15a
    nop

    .line 2933
    :goto_15b
    throw v2
.end method
