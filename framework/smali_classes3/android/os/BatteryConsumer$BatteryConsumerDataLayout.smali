.class Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerDataLayout"
.end annotation


# static fields
.field private static final KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final columnCount:I

.field public final customPowerComponentCount:I

.field public final customPowerComponentNames:[Ljava/lang/String;

.field public final firstCustomConsumedPowerColumn:I

.field public final firstCustomUsageDurationColumn:I

.field public final keys:[[Landroid/os/BatteryConsumer$Key;

.field public final powerModelsIncluded:Z

.field public final processStateDataIncluded:Z

.field public final processStateKeys:[[Landroid/os/BatteryConsumer$Key;

.field public final totalConsumedPowerColumnIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 689
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method private constructor <init>(I[Ljava/lang/String;ZZ)V
    .registers 25
    .param p1, "firstColumn"    # I
    .param p2, "customPowerComponentNames"    # [Ljava/lang/String;
    .param p3, "powerModelsIncluded"    # Z
    .param p4, "includeProcessStateData"    # Z

    .line 702
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object v1, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    .line 704
    array-length v4, v1

    iput v4, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    .line 705
    iput-boolean v2, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerModelsIncluded:Z

    .line 706
    iput-boolean v3, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    .line 708
    move/from16 v4, p1

    .line 710
    .local v4, "columnIndex":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "columnIndex":I
    .local v5, "columnIndex":I
    iput v4, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    .line 712
    const/16 v4, 0x13

    new-array v6, v4, [[Landroid/os/BatteryConsumer$Key;

    iput-object v6, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    .line 714
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v6, "perComponentKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    const/4 v7, 0x0

    move v14, v7

    .local v14, "componentId":I
    :goto_27
    const/4 v15, 0x5

    if-ge v14, v4, :cond_a6

    .line 716
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 719
    new-instance v13, Landroid/os/BatteryConsumer$Key;

    const/4 v9, 0x0

    .line 721
    const/16 v16, -0x1

    if-eqz v2, :cond_39

    add-int/lit8 v7, v5, 0x1

    move v10, v5

    move v11, v7

    .end local v5    # "columnIndex":I
    .local v7, "columnIndex":I
    goto :goto_3c

    .end local v7    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    :cond_39
    move v11, v5

    move/from16 v10, v16

    .end local v5    # "columnIndex":I
    .local v11, "columnIndex":I
    :goto_3c
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "columnIndex":I
    .local v12, "columnIndex":I
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    const/16 v17, 0x0

    move-object v7, v13

    move v8, v14

    move-object v4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIILandroid/os/BatteryConsumer$Key-IA;)V

    .line 719
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    if-eqz v3, :cond_95

    .line 728
    const/4 v4, 0x0

    .line 729
    .local v4, "isSupported":Z
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetSUPPORTED_POWER_COMPONENTS_PER_PROCESS_STATE()[I

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_56
    if-ge v9, v8, :cond_61

    aget v10, v7, v9

    .line 730
    .local v10, "id":I
    if-ne v10, v14, :cond_5e

    .line 731
    const/4 v4, 0x1

    .line 732
    goto :goto_61

    .line 729
    .end local v10    # "id":I
    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 735
    :cond_61
    :goto_61
    if-eqz v4, :cond_95

    .line 736
    const/4 v7, 0x0

    move v13, v7

    .local v13, "processState":I
    :goto_65
    if-ge v13, v15, :cond_93

    .line 738
    if-nez v13, :cond_6c

    .line 739
    move/from16 v19, v13

    goto :goto_8f

    .line 742
    :cond_6c
    new-instance v12, Landroid/os/BatteryConsumer$Key;

    .line 744
    if-eqz v2, :cond_75

    add-int/lit8 v7, v5, 0x1

    move v10, v5

    move v11, v7

    .end local v5    # "columnIndex":I
    .restart local v7    # "columnIndex":I
    goto :goto_78

    .end local v7    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    :cond_75
    move v11, v5

    move/from16 v10, v16

    .end local v5    # "columnIndex":I
    .restart local v11    # "columnIndex":I
    :goto_78
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "columnIndex":I
    .local v17, "columnIndex":I
    const/16 v18, 0x0

    move-object v7, v12

    move v8, v14

    move v9, v13

    move-object v15, v12

    move v12, v5

    move/from16 v19, v13

    .end local v13    # "processState":I
    .local v19, "processState":I
    move-object/from16 v13, v18

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIILandroid/os/BatteryConsumer$Key-IA;)V

    .line 742
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v17

    .line 737
    .end local v17    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    :goto_8f
    add-int/lit8 v13, v19, 0x1

    const/4 v15, 0x5

    .end local v19    # "processState":I
    .restart local v13    # "processState":I
    goto :goto_65

    .line 736
    :cond_93
    move/from16 v19, v13

    .line 752
    .end local v4    # "isSupported":Z
    .end local v13    # "processState":I
    :cond_95
    iget-object v4, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    sget-object v7, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/BatteryConsumer$Key;

    aput-object v7, v4, v14

    .line 715
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x13

    goto :goto_27

    .line 755
    .end local v14    # "componentId":I
    :cond_a6
    if-eqz v3, :cond_ee

    .line 756
    const/4 v4, 0x5

    new-array v7, v4, [[Landroid/os/BatteryConsumer$Key;

    iput-object v7, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateKeys:[[Landroid/os/BatteryConsumer$Key;

    .line 757
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v7, "perProcStateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    const/4 v8, 0x0

    .local v8, "processState":I
    :goto_b3
    if-ge v8, v4, :cond_ed

    .line 759
    if-nez v8, :cond_b8

    .line 760
    goto :goto_ea

    .line 763
    :cond_b8
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 764
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_bc
    iget-object v10, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v10, v10

    if-ge v9, v10, :cond_de

    .line 765
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_c2
    iget-object v11, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v11, v11, v9

    array-length v12, v11

    if-ge v10, v12, :cond_db

    .line 766
    aget-object v11, v11, v10

    iget v11, v11, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v11, v8, :cond_d8

    .line 767
    iget-object v11, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_d8
    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    .line 764
    .end local v10    # "j":I
    :cond_db
    add-int/lit8 v9, v9, 0x1

    goto :goto_bc

    .line 771
    .end local v9    # "i":I
    :cond_de
    iget-object v9, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateKeys:[[Landroid/os/BatteryConsumer$Key;

    sget-object v10, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/BatteryConsumer$Key;

    aput-object v10, v9, v8

    .line 758
    :goto_ea
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    .line 773
    .end local v7    # "perProcStateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .end local v8    # "processState":I
    :cond_ed
    goto :goto_f1

    .line 774
    :cond_ee
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateKeys:[[Landroid/os/BatteryConsumer$Key;

    .line 777
    :goto_f1
    iput v5, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    .line 778
    iget v4, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v5, v4

    .line 780
    iput v5, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    .line 781
    add-int/2addr v5, v4

    .line 783
    iput v5, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    .line 784
    return-void
.end method

.method synthetic constructor <init>(I[Ljava/lang/String;ZZLandroid/os/BatteryConsumer$BatteryConsumerDataLayout-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;-><init>(I[Ljava/lang/String;ZZ)V

    return-void
.end method
