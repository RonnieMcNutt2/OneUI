.class Lcom/samsung/android/service/SemService/SemServiceManager$1;
.super Ljava/lang/Object;
.source "SemServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/SemService/SemServiceManager;->deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

.field final synthetic val$aid:Ljava/util/ArrayList;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/service/SemService/SemServiceManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    iput-object p2, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .line 709
    move-object/from16 v1, p0

    const-string v2, "Flag Error"

    const-string v3, "03"

    const-string v4, "SEC_ESE_ServiceManager"

    const/4 v5, -0x1

    .line 711
    .local v5, "ret":I
    const/16 v6, 0xe

    new-array v6, v6, [B

    fill-array-data v6, :array_e7e

    .line 713
    .local v6, "selectSCRSCmd":[B
    const/4 v7, 0x0

    .line 714
    .local v7, "baRsp":[B
    const v8, 0x16800

    new-array v9, v8, [B

    .line 715
    .local v9, "aidListByteData":[B
    const/4 v10, 0x0

    .line 716
    .local v10, "aidListByteDataLen":I
    const/4 v11, 0x5

    new-array v12, v11, [B

    fill-array-data v12, :array_e8a

    .line 717
    .local v12, "getWhiteListCmd":[B
    new-array v13, v11, [B

    fill-array-data v13, :array_e92

    .line 719
    .local v13, "getWhiteListCmdMore":[B
    const/4 v14, 0x0

    .line 720
    .local v14, "isOpen":Z
    const/4 v15, 0x0

    .line 721
    .local v15, "isMoreData":Z
    const/16 v16, 0x0

    .line 724
    .local v16, "listNull":Z
    :try_start_26
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    if-eqz v8, :cond_d07

    .line 731
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2c} :catch_de7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_26 .. :try_end_2c} :catch_dc0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_26 .. :try_end_2c} :catch_d99
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_d6c
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2c} :catch_d44

    const-string v11, "02"

    if-nez v2, :cond_8a

    :try_start_30
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_8a

    .line 732
    :cond_3f
    const-string v2, "AID Null Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/16 v5, -0xd

    .line 735
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "AID Error"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .end local v16    # "listNull":Z
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v2
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_4e} :catch_7e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_30 .. :try_end_4e} :catch_72
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_4e} :catch_66
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_5a
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_4e} :catch_4e

    .line 982
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    .restart local v16    # "listNull":Z
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_4e
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    goto/16 :goto_d52

    .line 975
    :catch_5a
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    goto/16 :goto_d7a

    .line 972
    :catch_66
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    goto/16 :goto_da7

    .line 969
    :catch_72
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    goto/16 :goto_dce

    .line 966
    :catch_7e
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    goto/16 :goto_df5

    .line 737
    :cond_8a
    :goto_8a
    :try_start_8a
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v2
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_90} :catch_de7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8a .. :try_end_90} :catch_dc0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8a .. :try_end_90} :catch_d99
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_d6c
    .catch Ljava/lang/Error; {:try_start_8a .. :try_end_90} :catch_d44

    move v5, v2

    .line 738
    if-nez v5, :cond_ca7

    .line 743
    const/4 v14, 0x1

    .line 745
    :try_start_94
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v2
    :try_end_9a
    .catch Ljava/lang/NullPointerException; {:try_start_94 .. :try_end_9a} :catch_c93
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_94 .. :try_end_9a} :catch_c7f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_94 .. :try_end_9a} :catch_c6b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_c57
    .catch Ljava/lang/Error; {:try_start_94 .. :try_end_9a} :catch_c43

    move-object v7, v2

    .line 746
    const-string v2, "RESP Error"

    if-eqz v7, :cond_bec

    :try_start_9f
    array-length v8, v7
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_a0} :catch_c93
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9f .. :try_end_a0} :catch_c7f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9f .. :try_end_a0} :catch_c6b
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a0} :catch_c57
    .catch Ljava/lang/Error; {:try_start_9f .. :try_end_a0} :catch_c43

    move-object/from16 v19, v6

    .end local v6    # "selectSCRSCmd":[B
    .local v19, "selectSCRSCmd":[B
    const/4 v6, 0x2

    if-lt v8, v6, :cond_bdd

    .line 752
    :try_start_a5
    array-length v8, v7

    .line 753
    .local v8, "baRspLen":I
    const/16 v20, 0x0

    .line 755
    .local v20, "failFlag":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 756
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v21, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b9
    .catch Ljava/lang/NullPointerException; {:try_start_a5 .. :try_end_b9} :catch_bcb
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a5 .. :try_end_b9} :catch_bb9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a5 .. :try_end_b9} :catch_ba7
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b9} :catch_b95
    .catch Ljava/lang/Error; {:try_start_a5 .. :try_end_b9} :catch_b83

    move/from16 v23, v10

    .end local v10    # "aidListByteDataLen":I
    .local v23, "aidListByteDataLen":I
    :try_start_bb
    const-string v10, "Select SW : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v8, -0x2

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v6, 0x2

    if-lt v8, v6, :cond_aef

    add-int/lit8 v6, v8, -0x2

    aget-byte v6, v7, v6

    const/16 v10, -0x70

    if-ne v6, v10, :cond_aef

    add-int/lit8 v6, v8, -0x1

    aget-byte v6, v7, v6

    if-nez v6, :cond_aef

    .line 760
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    const-string v10, "01"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_f9
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_f9} :catch_b71
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_bb .. :try_end_f9} :catch_b5f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_bb .. :try_end_f9} :catch_b4d
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f9} :catch_b3b
    .catch Ljava/lang/Error; {:try_start_bb .. :try_end_f9} :catch_b29

    const-string v10, "BDAL Success"

    move/from16 v24, v8

    .end local v8    # "baRspLen":I
    .local v24, "baRspLen":I
    const-string v8, "BDAL Fail"

    move/from16 v25, v14

    .end local v14    # "isOpen":Z
    .local v25, "isOpen":Z
    const-string v14, "RSP SW : "

    move/from16 v26, v15

    .end local v15    # "isMoreData":Z
    .local v26, "isMoreData":Z
    const-string v15, "BDAL Error"

    move/from16 v27, v5

    .end local v5    # "ret":I
    .local v27, "ret":I
    const-string v5, "Start ALL BDAL"

    if-eqz v6, :cond_239

    .line 761
    :try_start_10d
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/NullPointerException; {:try_start_10d .. :try_end_110} :catch_227
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10d .. :try_end_110} :catch_215
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10d .. :try_end_110} :catch_203
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_110} :catch_1f1
    .catch Ljava/lang/Error; {:try_start_10d .. :try_end_110} :catch_1df

    .line 762
    const/4 v5, 0x5

    :try_start_111
    new-array v5, v5, [B

    fill-array-data v5, :array_e9a
    :try_end_116
    .catch Ljava/lang/NullPointerException; {:try_start_111 .. :try_end_116} :catch_18c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_111 .. :try_end_116} :catch_189
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_111 .. :try_end_116} :catch_186
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_116} :catch_183
    .catch Ljava/lang/Error; {:try_start_111 .. :try_end_116} :catch_180

    .line 764
    .local v5, "deactivationCMD":[B
    :try_start_116
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v6

    move-object v7, v6

    .line 765
    if-eqz v7, :cond_177

    array-length v6, v7

    const/4 v11, 0x2

    if-lt v6, v11, :cond_177

    .line 771
    array-length v2, v7

    .line 773
    .end local v24    # "baRspLen":I
    .local v2, "baRspLen":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v11, v2, -0x2

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v6, 0x2

    if-lt v2, v6, :cond_161

    add-int/lit8 v6, v2, -0x2

    aget-byte v6, v7, v6

    const/16 v11, -0x70

    if-ne v6, v11, :cond_161

    add-int/lit8 v6, v2, -0x1

    aget-byte v6, v7, v6

    if-nez v6, :cond_161

    .line 775
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166

    .line 777
    :cond_161
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    add-int/lit8 v20, v20, 0x1

    .line 780
    .end local v5    # "deactivationCMD":[B
    :goto_166
    move v8, v2

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v11, v22

    move/from16 v10, v23

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_b21

    .line 766
    .end local v2    # "baRspLen":I
    .restart local v5    # "deactivationCMD":[B
    .restart local v24    # "baRspLen":I
    :cond_177
    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v6
    :try_end_180
    .catch Ljava/lang/NullPointerException; {:try_start_116 .. :try_end_180} :catch_227
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_116 .. :try_end_180} :catch_215
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_116 .. :try_end_180} :catch_203
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_180} :catch_1f1
    .catch Ljava/lang/Error; {:try_start_116 .. :try_end_180} :catch_1df

    .line 982
    .end local v5    # "deactivationCMD":[B
    .end local v20    # "failFlag":I
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "baRspLen":I
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_180
    move-exception v0

    move-object v2, v0

    goto :goto_18f

    .line 975
    :catch_183
    move-exception v0

    move-object v2, v0

    goto :goto_19f

    .line 972
    :catch_186
    move-exception v0

    move-object v2, v0

    goto :goto_1af

    .line 969
    :catch_189
    move-exception v0

    move-object v2, v0

    goto :goto_1bf

    .line 966
    :catch_18c
    move-exception v0

    move-object v2, v0

    goto :goto_1cf

    .line 982
    :goto_18f
    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :goto_19f
    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :goto_1af
    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :goto_1bf
    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :goto_1cf
    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 982
    :catch_1df
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_1f1
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_203
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_215
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_227
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 781
    .restart local v20    # "failFlag":I
    .restart local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "baRspLen":I
    :cond_239
    :try_start_239
    const-string v6, "Start Get-L"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23e
    .catch Ljava/lang/NullPointerException; {:try_start_239 .. :try_end_23e} :catch_add
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_239 .. :try_end_23e} :catch_acb
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_239 .. :try_end_23e} :catch_ab9
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23e} :catch_aa7
    .catch Ljava/lang/Error; {:try_start_239 .. :try_end_23e} :catch_a95

    .line 782
    const/4 v6, 0x0

    move/from16 v34, v23

    move-object/from16 v23, v7

    move/from16 v7, v34

    .local v6, "k":I
    .local v7, "aidListByteDataLen":I
    .local v23, "baRsp":[B
    :goto_245
    move-object/from16 v28, v15

    const/16 v15, 0x14

    move-object/from16 v29, v8

    if-ge v6, v15, :cond_5bd

    .line 783
    if-eqz v26, :cond_316

    .line 784
    :try_start_24f
    const-string v15, "M"

    invoke-static {v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v15, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v15
    :try_end_25a
    .catch Ljava/lang/NullPointerException; {:try_start_24f .. :try_end_25a} :catch_303
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24f .. :try_end_25a} :catch_2f0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_24f .. :try_end_25a} :catch_2dd
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_25a} :catch_2ca
    .catch Ljava/lang/Error; {:try_start_24f .. :try_end_25a} :catch_2b7

    .line 786
    .end local v23    # "baRsp":[B
    .local v15, "baRsp":[B
    :try_start_25a
    array-length v8, v15
    :try_end_25b
    .catch Ljava/lang/NullPointerException; {:try_start_25a .. :try_end_25b} :catch_2a5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_25a .. :try_end_25b} :catch_293
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_25a .. :try_end_25b} :catch_281
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_25b} :catch_26f
    .catch Ljava/lang/Error; {:try_start_25a .. :try_end_25b} :catch_25d

    .end local v24    # "baRspLen":I
    .restart local v8    # "baRspLen":I
    goto/16 :goto_322

    .line 982
    .end local v6    # "k":I
    .end local v8    # "baRspLen":I
    .end local v20    # "failFlag":I
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_25d
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_26f
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_281
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_293
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_2a5
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 982
    .end local v15    # "baRsp":[B
    .restart local v23    # "baRsp":[B
    :catch_2b7
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_2ca
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_2dd
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_2f0
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_303
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 788
    .restart local v6    # "k":I
    .restart local v20    # "failFlag":I
    .restart local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "baRspLen":I
    :cond_316
    :try_start_316
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v8, v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v8
    :try_end_31c
    .catch Ljava/lang/NullPointerException; {:try_start_316 .. :try_end_31c} :catch_5aa
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_316 .. :try_end_31c} :catch_597
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_316 .. :try_end_31c} :catch_584
    .catch Ljava/lang/Exception; {:try_start_316 .. :try_end_31c} :catch_571
    .catch Ljava/lang/Error; {:try_start_316 .. :try_end_31c} :catch_55e

    .line 789
    .end local v23    # "baRsp":[B
    .local v8, "baRsp":[B
    :try_start_31c
    array-length v15, v8
    :try_end_31d
    .catch Ljava/lang/NullPointerException; {:try_start_31c .. :try_end_31d} :catch_54c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_31c .. :try_end_31d} :catch_53a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_31c .. :try_end_31d} :catch_528
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_31d} :catch_516
    .catch Ljava/lang/Error; {:try_start_31c .. :try_end_31d} :catch_504

    .end local v24    # "baRspLen":I
    .local v15, "baRspLen":I
    move/from16 v34, v15

    move-object v15, v8

    move/from16 v8, v34

    .line 792
    .local v8, "baRspLen":I
    .local v15, "baRsp":[B
    :goto_322
    move-object/from16 v30, v12

    .end local v12    # "getWhiteListCmd":[B
    .local v30, "getWhiteListCmd":[B
    :try_start_324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_329
    .catch Ljava/lang/NullPointerException; {:try_start_324 .. :try_end_329} :catch_4f4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_324 .. :try_end_329} :catch_4e4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_324 .. :try_end_329} :catch_4d4
    .catch Ljava/lang/Exception; {:try_start_324 .. :try_end_329} :catch_4c4
    .catch Ljava/lang/Error; {:try_start_324 .. :try_end_329} :catch_4b4

    move-object/from16 v31, v13

    .end local v13    # "getWhiteListCmdMore":[B
    .local v31, "getWhiteListCmdMore":[B
    :try_start_32b
    const-string v13, "List SW : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v8, -0x2

    aget-byte v13, v15, v13

    invoke-static {v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v8, -0x1

    aget-byte v13, v15, v13

    invoke-static {v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catch Ljava/lang/NullPointerException; {:try_start_32b .. :try_end_350} :catch_4a6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_32b .. :try_end_350} :catch_498
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_32b .. :try_end_350} :catch_48a
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_350} :catch_47c
    .catch Ljava/lang/Error; {:try_start_32b .. :try_end_350} :catch_46e

    .line 794
    const-string v12, "Size Error"

    const/4 v13, 0x2

    if-lt v8, v13, :cond_395

    add-int/lit8 v13, v8, -0x2

    :try_start_357
    aget-byte v13, v15, v13

    move-object/from16 v32, v10

    const/16 v10, 0x63

    if-ne v13, v10, :cond_397

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v15, v10

    const/16 v13, 0x10

    if-ne v10, v13, :cond_397

    .line 795
    const-string v10, "M-Get List"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v26, 0x1

    .line 798
    add-int/lit8 v10, v8, -0x2

    add-int/2addr v10, v7

    const v13, 0x16800

    if-le v10, v13, :cond_37a

    .line 799
    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_383

    .line 801
    :cond_37a
    add-int/lit8 v10, v8, -0x2

    const/4 v12, 0x0

    invoke-static {v15, v12, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    add-int/lit8 v10, v8, -0x2

    add-int/2addr v7, v10

    .line 782
    :goto_383
    add-int/lit8 v6, v6, 0x1

    move/from16 v24, v8

    move-object/from16 v23, v15

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v10, v32

    goto/16 :goto_245

    .line 794
    :cond_395
    move-object/from16 v32, v10

    .line 804
    :cond_397
    const/4 v10, 0x2

    if-lt v8, v10, :cond_441

    add-int/lit8 v10, v8, -0x2

    aget-byte v10, v15, v10

    const/16 v13, -0x70

    if-ne v10, v13, :cond_441

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v15, v10

    if-nez v10, :cond_441

    .line 805
    const-string v10, "Get List Succ"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catch Ljava/lang/NullPointerException; {:try_start_357 .. :try_end_3ad} :catch_4a6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_357 .. :try_end_3ad} :catch_498
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_357 .. :try_end_3ad} :catch_48a
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_3ad} :catch_47c
    .catch Ljava/lang/Error; {:try_start_357 .. :try_end_3ad} :catch_46e

    .line 806
    const/4 v10, 0x0

    .line 808
    .end local v26    # "isMoreData":Z
    .local v10, "isMoreData":Z
    add-int/lit8 v13, v8, -0x2

    add-int/2addr v13, v7

    move/from16 v33, v6

    const v6, 0x16800

    .end local v6    # "k":I
    .local v33, "k":I
    if-le v13, v6, :cond_3bc

    .line 809
    :try_start_3b8
    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c5

    .line 811
    :cond_3bc
    add-int/lit8 v6, v8, -0x2

    const/4 v12, 0x0

    invoke-static {v15, v12, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    add-int/lit8 v6, v8, -0x2

    add-int/2addr v7, v6

    .line 814
    :goto_3c5
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v6, v9, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;

    move-result-object v6

    .line 815
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_3e7

    .line 816
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "L CNT : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e7
    .catch Ljava/lang/NullPointerException; {:try_start_3b8 .. :try_end_3e7} :catch_431
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3b8 .. :try_end_3e7} :catch_421
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3b8 .. :try_end_3e7} :catch_411
    .catch Ljava/lang/Exception; {:try_start_3b8 .. :try_end_3e7} :catch_401
    .catch Ljava/lang/Error; {:try_start_3b8 .. :try_end_3e7} :catch_3f1

    .line 833
    .end local v33    # "k":I
    :cond_3e7
    move/from16 v24, v8

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_5cc

    .line 982
    .end local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "baRspLen":I
    .end local v20    # "failFlag":I
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_3f1
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_d52

    .line 975
    :catch_401
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_d7a

    .line 972
    :catch_411
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_da7

    .line 969
    :catch_421
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_dce

    .line 966
    :catch_431
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v34, v10

    move v10, v7

    move-object v7, v15

    move/from16 v15, v34

    goto/16 :goto_df5

    .line 804
    .end local v10    # "isMoreData":Z
    .local v6, "k":I
    .restart local v8    # "baRspLen":I
    .restart local v20    # "failFlag":I
    .restart local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "isMoreData":Z
    :cond_441
    move/from16 v33, v6

    .line 819
    .end local v6    # "k":I
    .restart local v33    # "k":I
    const/4 v5, 0x2

    if-lt v8, v5, :cond_463

    add-int/lit8 v5, v8, -0x2

    :try_start_448
    aget-byte v5, v15, v5

    const/16 v6, 0x6a

    if-ne v5, v6, :cond_463

    add-int/lit8 v5, v8, -0x1

    aget-byte v5, v15, v5

    const/16 v6, -0x78

    if-ne v5, v6, :cond_463

    .line 820
    const-string v5, "List Null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v16, 0x1

    .line 824
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "aidListByteDataLen":I
    .end local v9    # "aidListByteData":[B
    .end local v15    # "baRsp":[B
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5

    .line 826
    .restart local v7    # "aidListByteDataLen":I
    .restart local v9    # "aidListByteData":[B
    .restart local v15    # "baRsp":[B
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :cond_463
    const-string v5, "Get List Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "aidListByteDataLen":I
    .end local v9    # "aidListByteData":[B
    .end local v15    # "baRsp":[B
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5
    :try_end_46e
    .catch Ljava/lang/NullPointerException; {:try_start_448 .. :try_end_46e} :catch_4a6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_448 .. :try_end_46e} :catch_498
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_448 .. :try_end_46e} :catch_48a
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_46e} :catch_47c
    .catch Ljava/lang/Error; {:try_start_448 .. :try_end_46e} :catch_46e

    .line 982
    .end local v8    # "baRspLen":I
    .end local v20    # "failFlag":I
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33    # "k":I
    .restart local v7    # "aidListByteDataLen":I
    .restart local v9    # "aidListByteData":[B
    .restart local v15    # "baRsp":[B
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_46e
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_47c
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_48a
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_498
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_4a6
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 982
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_4b4
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d52

    .line 975
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_4c4
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d7a

    .line 972
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_4d4
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_da7

    .line 969
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_4e4
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_dce

    .line 966
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_4f4
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object v7, v15

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_df5

    .line 982
    .end local v15    # "baRsp":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .local v8, "baRsp":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_504
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object v7, v8

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d52

    .line 975
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_516
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object v7, v8

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d7a

    .line 972
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_528
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object v7, v8

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_da7

    .line 969
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_53a
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object v7, v8

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_dce

    .line 966
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_54c
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object v7, v8

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_df5

    .line 982
    .end local v8    # "baRsp":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v23    # "baRsp":[B
    :catch_55e
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d52

    .line 975
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_571
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_d7a

    .line 972
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_584
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_da7

    .line 969
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_597
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_dce

    .line 966
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_5aa
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    goto/16 :goto_df5

    .line 782
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .restart local v6    # "k":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v20    # "failFlag":I
    .restart local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "baRspLen":I
    :cond_5bd
    move/from16 v33, v6

    move-object/from16 v32, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    .end local v6    # "k":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "k":I
    move v10, v7

    move-object/from16 v6, v21

    move-object/from16 v7, v23

    move/from16 v15, v26

    .line 833
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "baRsp":[B
    .end local v26    # "isMoreData":Z
    .end local v33    # "k":I
    .local v6, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "baRsp":[B
    .local v10, "aidListByteDataLen":I
    .local v15, "isMoreData":Z
    :goto_5cc
    const/4 v8, 0x0

    .line 834
    .local v8, "tempStr":Ljava/lang/String;
    const/4 v12, 0x1

    :try_start_5ce
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13
    :try_end_5d2
    .catch Ljava/lang/NullPointerException; {:try_start_5ce .. :try_end_5d2} :catch_a87
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5ce .. :try_end_5d2} :catch_a79
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5ce .. :try_end_5d2} :catch_a6b
    .catch Ljava/lang/Exception; {:try_start_5ce .. :try_end_5d2} :catch_a5d
    .catch Ljava/lang/Error; {:try_start_5ce .. :try_end_5d2} :catch_a4f

    move-object v12, v13

    .line 836
    .local v12, "addFlag":Ljava/lang/Boolean;
    if-nez v6, :cond_618

    .line 837
    :try_start_5d5
    const-string/jumbo v2, "whiteAidList Null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5db
    .catch Ljava/lang/NullPointerException; {:try_start_5d5 .. :try_end_5db} :catch_60e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5d5 .. :try_end_5db} :catch_604
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5d5 .. :try_end_5db} :catch_5fa
    .catch Ljava/lang/Exception; {:try_start_5d5 .. :try_end_5db} :catch_5f0
    .catch Ljava/lang/Error; {:try_start_5d5 .. :try_end_5db} :catch_5e6

    .line 838
    const/16 v2, -0xd

    move v5, v2

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v11, v22

    .end local v27    # "ret":I
    .local v2, "ret":I
    goto/16 :goto_9b3

    .line 982
    .end local v2    # "ret":I
    .end local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "tempStr":Ljava/lang/String;
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .end local v20    # "failFlag":I
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "baRspLen":I
    .restart local v27    # "ret":I
    :catch_5e6
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_5f0
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_5fa
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_604
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_60e
    move-exception v0

    move-object v2, v0

    move-object/from16 v33, v9

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 839
    .restart local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "tempStr":Ljava/lang/String;
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v20    # "failFlag":I
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "baRspLen":I
    :cond_618
    :try_start_618
    iget-object v13, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_61e
    .catch Ljava/lang/NullPointerException; {:try_start_618 .. :try_end_61e} :catch_a87
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_618 .. :try_end_61e} :catch_a79
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_618 .. :try_end_61e} :catch_a6b
    .catch Ljava/lang/Exception; {:try_start_618 .. :try_end_61e} :catch_a5d
    .catch Ljava/lang/Error; {:try_start_618 .. :try_end_61e} :catch_a4f

    const-string v13, " : "

    move-object/from16 v17, v7

    .end local v7    # "baRsp":[B
    .local v17, "baRsp":[B
    const-string v7, "COM List : "

    move-object/from16 v21, v8

    .end local v8    # "tempStr":Ljava/lang/String;
    .local v21, "tempStr":Ljava/lang/String;
    const-string v8, ""

    move-object/from16 v33, v9

    .end local v9    # "aidListByteData":[B
    .local v33, "aidListByteData":[B
    const-string v9, "#"

    move/from16 v23, v10

    .end local v10    # "aidListByteDataLen":I
    .local v23, "aidListByteDataLen":I
    const-string v10, "*"

    if-eqz v11, :cond_76b

    .line 840
    :try_start_632
    const-string v2, "Start LD"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_764

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_764

    .line 843
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_646
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_757

    .line 844
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_64d
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_74b

    .line 845
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_73a

    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_693

    move-object/from16 v14, v22

    move-object/from16 v22, v12

    goto/16 :goto_73e

    .line 850
    :cond_693
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6bb

    .line 852
    const-string v11, "N A-DAL"

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v14, v22

    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    move-object/from16 v22, v12

    goto/16 :goto_74f

    .line 855
    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6bb
    move-object/from16 v14, v22

    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6fd

    .line 856
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 857
    .end local v21    # "tempStr":Ljava/lang/String;
    .local v11, "tempStr":Ljava/lang/String;
    invoke-virtual {v11, v10, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, v18

    .line 859
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .local v22, "addFlag":Ljava/lang/Boolean;
    move-object/from16 v12, v18

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6fa

    .line 861
    const-string v12, "* A-DAL"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v21, v11

    goto :goto_74f

    .line 859
    :cond_6fa
    move-object/from16 v21, v11

    goto :goto_743

    .line 865
    .end local v11    # "tempStr":Ljava/lang/String;
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v21    # "tempStr":Ljava/lang/String;
    :cond_6fd
    move-object/from16 v22, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_743

    .line 866
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 867
    .end local v21    # "tempStr":Ljava/lang/String;
    .restart local v11    # "tempStr":Ljava/lang/String;
    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 869
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_737

    .line 871
    const-string v12, "# A-DAL"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    move-object/from16 v21, v11

    goto :goto_74f

    .line 869
    :cond_737
    move-object/from16 v21, v11

    goto :goto_743

    .line 847
    .end local v11    # "tempStr":Ljava/lang/String;
    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v21    # "tempStr":Ljava/lang/String;
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_73a
    move-object/from16 v14, v22

    move-object/from16 v22, v12

    .line 848
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "addFlag":Ljava/lang/Boolean;
    :goto_73e
    const-string v11, "COM Data Error"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_743
    :goto_743
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    goto/16 :goto_64d

    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_74b
    move-object/from16 v14, v22

    move-object/from16 v22, v12

    .line 843
    .end local v5    # "j":I
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "addFlag":Ljava/lang/Boolean;
    :goto_74f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v22

    move-object/from16 v22, v14

    goto/16 :goto_646

    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_757
    move-object/from16 v14, v22

    move-object/from16 v22, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "addFlag":Ljava/lang/Boolean;
    move-object v11, v14

    move-object/from16 v7, v17

    move-object/from16 v8, v21

    move/from16 v5, v27

    .end local v2    # "i":I
    goto/16 :goto_9b3

    .line 842
    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_764
    move-object/from16 v14, v22

    move-object/from16 v22, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "addFlag":Ljava/lang/Boolean;
    move-object v11, v14

    goto/16 :goto_99c

    .line 880
    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_76b
    move-object/from16 v11, v22

    move-object/from16 v22, v12

    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .local v11, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "addFlag":Ljava/lang/Boolean;
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9a5

    .line 881
    const-string v12, "Start BLD"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_8a9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_8a9

    .line 884
    const/4 v2, 0x0

    move-object/from16 v12, v22

    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .restart local v2    # "i":I
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    :goto_78d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_8a1

    .line 885
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v5, v14

    .line 886
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .local v5, "addFlag":Ljava/lang/Boolean;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_79a
    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_884

    .line 887
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v5

    .end local v5    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_878

    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7e1

    const/4 v14, 0x0

    goto/16 :goto_879

    .line 892
    :cond_7e1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_804

    .line 894
    const-string v5, "N"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v5, v14

    .line 896
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .restart local v5    # "addFlag":Ljava/lang/Boolean;
    move-object v12, v5

    const/4 v14, 0x0

    goto/16 :goto_889

    .line 897
    .end local v5    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    :cond_804
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_83e

    .line 898
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 899
    .end local v21    # "tempStr":Ljava/lang/String;
    .local v5, "tempStr":Ljava/lang/String;
    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 901
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_83a

    .line 903
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v14, v18

    .line 905
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .local v14, "addFlag":Ljava/lang/Boolean;
    move-object/from16 v21, v5

    move-object v12, v14

    const/4 v14, 0x0

    goto :goto_889

    .line 901
    .end local v14    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    :cond_83a
    move-object/from16 v21, v5

    const/4 v14, 0x0

    goto :goto_87e

    .line 907
    .end local v5    # "tempStr":Ljava/lang/String;
    .restart local v21    # "tempStr":Ljava/lang/String;
    :cond_83e
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_876

    .line 908
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 909
    .end local v21    # "tempStr":Ljava/lang/String;
    .restart local v5    # "tempStr":Ljava/lang/String;
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 911
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_872

    .line 913
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 915
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .local v18, "addFlag":Ljava/lang/Boolean;
    move-object/from16 v21, v5

    move-object/from16 v12, v18

    goto :goto_889

    .line 911
    .end local v18    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    :cond_872
    const/4 v14, 0x0

    move-object/from16 v21, v5

    goto :goto_87e

    .line 907
    .end local v5    # "tempStr":Ljava/lang/String;
    .restart local v21    # "tempStr":Ljava/lang/String;
    :cond_876
    const/4 v14, 0x0

    goto :goto_87e

    .line 889
    :cond_878
    const/4 v14, 0x0

    .line 890
    :goto_879
    const-string v5, "COM Data Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_87e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v22

    goto/16 :goto_79a

    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .local v5, "addFlag":Ljava/lang/Boolean;
    :cond_884
    move-object/from16 v22, v5

    const/4 v14, 0x0

    .end local v5    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    move-object/from16 v12, v22

    .line 921
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .local v12, "addFlag":Ljava/lang/Boolean;
    :goto_889
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_89d

    .line 922
    const-string v5, "A-DAL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_89d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_78d

    :cond_8a1
    move-object/from16 v7, v17

    move-object/from16 v8, v21

    move/from16 v5, v27

    .end local v2    # "i":I
    goto/16 :goto_9b3

    .line 926
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    :cond_8a9
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_99c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_99c

    .line 927
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8bb
    .catch Ljava/lang/NullPointerException; {:try_start_632 .. :try_end_8bb} :catch_a43
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_632 .. :try_end_8bb} :catch_a37
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_632 .. :try_end_8bb} :catch_a2b
    .catch Ljava/lang/Exception; {:try_start_632 .. :try_end_8bb} :catch_a1f
    .catch Ljava/lang/Error; {:try_start_632 .. :try_end_8bb} :catch_a13

    .line 928
    const/4 v5, 0x5

    :try_start_8bc
    new-array v5, v5, [B

    fill-array-data v5, :array_ea2
    :try_end_8c1
    .catch Ljava/lang/NullPointerException; {:try_start_8bc .. :try_end_8c1} :catch_967
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8bc .. :try_end_8c1} :catch_964
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8bc .. :try_end_8c1} :catch_961
    .catch Ljava/lang/Exception; {:try_start_8bc .. :try_end_8c1} :catch_95e
    .catch Ljava/lang/Error; {:try_start_8bc .. :try_end_8c1} :catch_95b

    .line 930
    .local v5, "deactivationCMD":[B
    :try_start_8c1
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7
    :try_end_8c7
    .catch Ljava/lang/NullPointerException; {:try_start_8c1 .. :try_end_8c7} :catch_a43
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8c1 .. :try_end_8c7} :catch_a37
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8c1 .. :try_end_8c7} :catch_a2b
    .catch Ljava/lang/Exception; {:try_start_8c1 .. :try_end_8c7} :catch_a1f
    .catch Ljava/lang/Error; {:try_start_8c1 .. :try_end_8c7} :catch_a13

    .line 931
    .end local v17    # "baRsp":[B
    .restart local v7    # "baRsp":[B
    if-eqz v7, :cond_950

    :try_start_8c9
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_950

    .line 937
    array-length v2, v7

    .line 939
    .end local v24    # "baRspLen":I
    .local v2, "baRspLen":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v7, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v7, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v8, 0x2

    if-lt v2, v8, :cond_90d

    add-int/lit8 v8, v2, -0x2

    aget-byte v8, v7, v8

    const/16 v9, -0x70

    if-ne v8, v9, :cond_90d

    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_90d

    .line 941
    move-object/from16 v8, v32

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_914

    .line 943
    :cond_90d
    move-object/from16 v8, v29

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    add-int/lit8 v20, v20, 0x1

    .line 946
    .end local v5    # "deactivationCMD":[B
    :goto_914
    move/from16 v24, v2

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move/from16 v5, v27

    goto/16 :goto_9b3

    .line 982
    .end local v2    # "baRspLen":I
    .end local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "failFlag":I
    .end local v21    # "tempStr":Ljava/lang/String;
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    :catch_91e
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_928
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_932
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_93c
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_946
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 932
    .restart local v5    # "deactivationCMD":[B
    .restart local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "failFlag":I
    .restart local v21    # "tempStr":Ljava/lang/String;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    .restart local v24    # "baRspLen":I
    :cond_950
    move-object/from16 v8, v28

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v15    # "isMoreData":Z
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v8
    :try_end_95b
    .catch Ljava/lang/NullPointerException; {:try_start_8c9 .. :try_end_95b} :catch_946
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8c9 .. :try_end_95b} :catch_93c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8c9 .. :try_end_95b} :catch_932
    .catch Ljava/lang/Exception; {:try_start_8c9 .. :try_end_95b} :catch_928
    .catch Ljava/lang/Error; {:try_start_8c9 .. :try_end_95b} :catch_91e

    .line 982
    .end local v5    # "deactivationCMD":[B
    .end local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "failFlag":I
    .end local v21    # "tempStr":Ljava/lang/String;
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .end local v24    # "baRspLen":I
    .restart local v15    # "isMoreData":Z
    .restart local v16    # "listNull":Z
    .restart local v17    # "baRsp":[B
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_95b
    move-exception v0

    move-object v2, v0

    goto :goto_96a

    .line 975
    :catch_95e
    move-exception v0

    move-object v2, v0

    goto :goto_974

    .line 972
    :catch_961
    move-exception v0

    move-object v2, v0

    goto :goto_97e

    .line 969
    :catch_964
    move-exception v0

    move-object v2, v0

    goto :goto_988

    .line 966
    :catch_967
    move-exception v0

    move-object v2, v0

    goto :goto_992

    .line 982
    :goto_96a
    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :goto_974
    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :goto_97e
    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :goto_988
    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :goto_992
    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 952
    .restart local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "failFlag":I
    .restart local v21    # "tempStr":Ljava/lang/String;
    .restart local v22    # "addFlag":Ljava/lang/Boolean;
    .restart local v24    # "baRspLen":I
    :cond_99c
    :goto_99c
    move-object/from16 v7, v17

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    move/from16 v5, v27

    .end local v14    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_9b3

    .line 948
    :cond_9a5
    :try_start_9a5
    const-string v2, "Type Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9aa
    .catch Ljava/lang/NullPointerException; {:try_start_9a5 .. :try_end_9aa} :catch_a43
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9a5 .. :try_end_9aa} :catch_a37
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9a5 .. :try_end_9aa} :catch_a2b
    .catch Ljava/lang/Exception; {:try_start_9a5 .. :try_end_9aa} :catch_a1f
    .catch Ljava/lang/Error; {:try_start_9a5 .. :try_end_9aa} :catch_a13

    .line 949
    const/16 v2, -0xd

    move v5, v2

    move-object/from16 v7, v17

    move-object/from16 v8, v21

    move-object/from16 v12, v22

    .line 952
    .end local v17    # "baRsp":[B
    .end local v21    # "tempStr":Ljava/lang/String;
    .end local v22    # "addFlag":Ljava/lang/Boolean;
    .end local v27    # "ret":I
    .local v5, "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v8    # "tempStr":Ljava/lang/String;
    .restart local v12    # "addFlag":Ljava/lang/Boolean;
    :goto_9b3
    :try_start_9b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DL CNT : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x1

    if-ge v2, v9, :cond_9da

    .line 954
    const-string v2, "DA List Null"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e3

    .line 956
    :cond_9da
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v2, v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I

    move-result v2
    :try_end_9e0
    .catch Ljava/lang/NullPointerException; {:try_start_9b3 .. :try_end_9e0} :catch_a0b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9b3 .. :try_end_9e0} :catch_a03
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9b3 .. :try_end_9e0} :catch_9fb
    .catch Ljava/lang/Exception; {:try_start_9b3 .. :try_end_9e0} :catch_9f3
    .catch Ljava/lang/Error; {:try_start_9b3 .. :try_end_9e0} :catch_9eb

    .line 957
    .end local v5    # "ret":I
    .local v2, "ret":I
    add-int v20, v20, v2

    move v5, v2

    .line 959
    .end local v2    # "ret":I
    .end local v8    # "tempStr":Ljava/lang/String;
    .end local v12    # "addFlag":Ljava/lang/Boolean;
    .restart local v5    # "ret":I
    :goto_9e3
    move-object/from16 v21, v6

    move/from16 v10, v23

    move/from16 v8, v24

    goto/16 :goto_b21

    .line 982
    .end local v6    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "failFlag":I
    .end local v24    # "baRspLen":I
    :catch_9eb
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    goto/16 :goto_d52

    .line 975
    :catch_9f3
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    goto/16 :goto_d7a

    .line 972
    :catch_9fb
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    goto/16 :goto_da7

    .line 969
    :catch_a03
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    goto/16 :goto_dce

    .line 966
    :catch_a0b
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    goto/16 :goto_df5

    .line 982
    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .restart local v17    # "baRsp":[B
    .restart local v27    # "ret":I
    :catch_a13
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_a1f
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_a2b
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_a37
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_a43
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v17

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 982
    .end local v17    # "baRsp":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    :catch_a4f
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object v2, v0

    move/from16 v14, v25

    move/from16 v5, v27

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .restart local v17    # "baRsp":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d52

    .line 975
    .end local v17    # "baRsp":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    :catch_a5d
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object v2, v0

    move/from16 v14, v25

    move/from16 v5, v27

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .restart local v17    # "baRsp":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d7a

    .line 972
    .end local v17    # "baRsp":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    :catch_a6b
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object v2, v0

    move/from16 v14, v25

    move/from16 v5, v27

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .restart local v17    # "baRsp":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_da7

    .line 969
    .end local v17    # "baRsp":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    :catch_a79
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object v2, v0

    move/from16 v14, v25

    move/from16 v5, v27

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .restart local v17    # "baRsp":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_dce

    .line 966
    .end local v17    # "baRsp":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    :catch_a87
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object v2, v0

    move/from16 v14, v25

    move/from16 v5, v27

    .end local v7    # "baRsp":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .restart local v17    # "baRsp":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_df5

    .line 982
    .end local v15    # "isMoreData":Z
    .end local v17    # "baRsp":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v7    # "baRsp":[B
    .restart local v9    # "aidListByteData":[B
    .local v12, "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v26    # "isMoreData":Z
    :catch_a95
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d52

    .line 975
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_aa7
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d7a

    .line 972
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_ab9
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_da7

    .line 969
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_acb
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_dce

    .line 966
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_add
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_df5

    .line 759
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .local v8, "baRspLen":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .local v14, "isOpen":Z
    .restart local v15    # "isMoreData":Z
    .restart local v20    # "failFlag":I
    .local v21, "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_aef
    move/from16 v27, v5

    move/from16 v24, v8

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object/from16 v11, v22

    .line 961
    .end local v5    # "ret":I
    .end local v8    # "baRspLen":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .end local v22    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "baRspLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :try_start_aff
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selet Fail"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/16 v5, -0xb

    move/from16 v10, v23

    move/from16 v8, v24

    move/from16 v15, v26

    .line 965
    .end local v23    # "aidListByteDataLen":I
    .end local v24    # "baRspLen":I
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    .restart local v8    # "baRspLen":I
    .restart local v10    # "aidListByteDataLen":I
    .restart local v15    # "isMoreData":Z
    :goto_b21
    if-lez v20, :cond_b25

    const/16 v5, -0x12

    .line 985
    .end local v8    # "baRspLen":I
    .end local v11    # "deactivateAID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "failFlag":I
    .end local v21    # "whiteAidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b25
    move/from16 v14, v25

    goto/16 :goto_e0e

    .line 982
    .end local v10    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v23    # "aidListByteDataLen":I
    :catch_b29
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    move/from16 v10, v23

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d52

    .line 975
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b3b
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    move/from16 v10, v23

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d7a

    .line 972
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b4d
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    move/from16 v10, v23

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_da7

    .line 969
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b5f
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    move/from16 v10, v23

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_dce

    .line 966
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b71
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    move/from16 v10, v23

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_df5

    .line 982
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b83
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d52

    .line 975
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_b95
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d7a

    .line 972
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_ba7
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_da7

    .line 969
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_bb9
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_dce

    .line 966
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_bcb
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_df5

    .line 746
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_bdd
    move/from16 v27, v5

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v5    # "ret":I
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto :goto_bfc

    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .local v6, "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_bec
    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .line 747
    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_bfc
    const-string v5, "Select Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v7    # "baRsp":[B
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v5
    :try_end_c07
    .catch Ljava/lang/NullPointerException; {:try_start_aff .. :try_end_c07} :catch_c37
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_aff .. :try_end_c07} :catch_c2b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_aff .. :try_end_c07} :catch_c1f
    .catch Ljava/lang/Exception; {:try_start_aff .. :try_end_c07} :catch_c13
    .catch Ljava/lang/Error; {:try_start_aff .. :try_end_c07} :catch_c07

    .line 982
    .restart local v7    # "baRsp":[B
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_c07
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d52

    .line 975
    :catch_c13
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_d7a

    .line 972
    :catch_c1f
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_da7

    .line 969
    :catch_c2b
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_dce

    .line 966
    :catch_c37
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v5, v27

    goto/16 :goto_df5

    .line 982
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_c43
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d52

    .line 975
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_c57
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_d7a

    .line 972
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_c6b
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_da7

    .line 969
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_c7f
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_dce

    .line 966
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :catch_c93
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move-object v2, v0

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v14    # "isOpen":Z
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v25    # "isOpen":Z
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    goto/16 :goto_df5

    .line 739
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v25    # "isOpen":Z
    .end local v26    # "isMoreData":Z
    .end local v27    # "ret":I
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v5    # "ret":I
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v14    # "isOpen":Z
    .restart local v15    # "isMoreData":Z
    :cond_ca7
    move/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    .end local v5    # "ret":I
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :try_start_cb5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_cc0
    .catch Ljava/lang/NullPointerException; {:try_start_cb5 .. :try_end_cc0} :catch_cfd
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_cb5 .. :try_end_cc0} :catch_cf3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_cb5 .. :try_end_cc0} :catch_ce9
    .catch Ljava/lang/Exception; {:try_start_cb5 .. :try_end_cc0} :catch_cdf
    .catch Ljava/lang/Error; {:try_start_cb5 .. :try_end_cc0} :catch_cd5

    move/from16 v5, v27

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    :try_start_cc2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "OPEN Error"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .end local v14    # "isOpen":Z
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v26    # "isMoreData":Z
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v2

    .line 982
    .restart local v7    # "baRsp":[B
    .restart local v14    # "isOpen":Z
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v26    # "isMoreData":Z
    .restart local v27    # "ret":I
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_cd5
    move-exception v0

    move/from16 v5, v27

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_d52

    .line 975
    .end local v5    # "ret":I
    .restart local v27    # "ret":I
    :catch_cdf
    move-exception v0

    move/from16 v5, v27

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_d7a

    .line 972
    .end local v5    # "ret":I
    .restart local v27    # "ret":I
    :catch_ce9
    move-exception v0

    move/from16 v5, v27

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_da7

    .line 969
    .end local v5    # "ret":I
    .restart local v27    # "ret":I
    :catch_cf3
    move-exception v0

    move/from16 v5, v27

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_dce

    .line 966
    .end local v5    # "ret":I
    .restart local v27    # "ret":I
    :catch_cfd
    move-exception v0

    move/from16 v5, v27

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    .end local v27    # "ret":I
    .restart local v5    # "ret":I
    goto/16 :goto_df5

    .line 725
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v26    # "isMoreData":Z
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v15    # "isMoreData":Z
    :cond_d07
    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v10    # "aidListByteDataLen":I
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .end local v15    # "isMoreData":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v26    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/16 v5, -0xd

    .line 728
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ret":I
    .end local v7    # "baRsp":[B
    .end local v14    # "isOpen":Z
    .end local v16    # "listNull":Z
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v26    # "isMoreData":Z
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .end local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    throw v6
    :try_end_d1e
    .catch Ljava/lang/NullPointerException; {:try_start_cc2 .. :try_end_d1e} :catch_d3c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_cc2 .. :try_end_d1e} :catch_d34
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_cc2 .. :try_end_d1e} :catch_d2c
    .catch Ljava/lang/Exception; {:try_start_cc2 .. :try_end_d1e} :catch_d25
    .catch Ljava/lang/Error; {:try_start_cc2 .. :try_end_d1e} :catch_d1e

    .line 982
    .restart local v5    # "ret":I
    .restart local v7    # "baRsp":[B
    .restart local v14    # "isOpen":Z
    .restart local v16    # "listNull":Z
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v23    # "aidListByteDataLen":I
    .restart local v26    # "isMoreData":Z
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    .restart local p0    # "this":Lcom/samsung/android/service/SemService/SemServiceManager$1;
    :catch_d1e
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    goto :goto_d52

    .line 975
    :catch_d25
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    goto :goto_d7a

    .line 972
    :catch_d2c
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    goto/16 :goto_da7

    .line 969
    :catch_d34
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    goto/16 :goto_dce

    .line 966
    :catch_d3c
    move-exception v0

    move-object v2, v0

    move/from16 v10, v23

    move/from16 v15, v26

    goto/16 :goto_df5

    .line 982
    .end local v19    # "selectSCRSCmd":[B
    .end local v23    # "aidListByteDataLen":I
    .end local v26    # "isMoreData":Z
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v10    # "aidListByteDataLen":I
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    .restart local v15    # "isMoreData":Z
    :catch_d44
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    move-object v2, v0

    .line 983
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/Error;
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_d52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v5, -0x5a

    goto/16 :goto_e0e

    .line 975
    .end local v2    # "e":Ljava/lang/Error;
    .end local v19    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_d6c
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    move-object v2, v0

    .line 976
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/Exception;
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_d7a
    if-eqz v16, :cond_d7f

    .line 977
    const/4 v5, 0x0

    goto/16 :goto_e0d

    .line 979
    :cond_d7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v5, -0x5a

    goto/16 :goto_e0d

    .line 972
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v19    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_d99
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    move-object v2, v0

    .line 973
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_da7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to link."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v5, -0x5a

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_e0d

    .line 969
    .end local v19    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_dc0
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    move-object v2, v0

    .line 970
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_dce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find class."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/16 v5, -0x5a

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_e0d

    .line 966
    .end local v19    # "selectSCRSCmd":[B
    .end local v30    # "getWhiteListCmd":[B
    .end local v31    # "getWhiteListCmdMore":[B
    .end local v33    # "aidListByteData":[B
    .restart local v6    # "selectSCRSCmd":[B
    .restart local v9    # "aidListByteData":[B
    .restart local v12    # "getWhiteListCmd":[B
    .restart local v13    # "getWhiteListCmdMore":[B
    :catch_de7
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v33, v9

    move/from16 v23, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v26, v15

    move-object v2, v0

    .line 967
    .end local v6    # "selectSCRSCmd":[B
    .end local v9    # "aidListByteData":[B
    .end local v12    # "getWhiteListCmd":[B
    .end local v13    # "getWhiteListCmdMore":[B
    .local v2, "e":Ljava/lang/NullPointerException;
    .restart local v19    # "selectSCRSCmd":[B
    .restart local v30    # "getWhiteListCmd":[B
    .restart local v31    # "getWhiteListCmdMore":[B
    .restart local v33    # "aidListByteData":[B
    :goto_df5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to connect service."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v5, -0x5a

    .line 985
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_e0d
    nop

    .line 988
    :goto_e0e
    if-eqz v14, :cond_e1d

    .line 989
    :try_start_e10
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 990
    const/4 v14, 0x0

    goto :goto_e1d

    .line 1006
    :catch_e17
    move-exception v0

    move-object v2, v0

    goto :goto_e4e

    .line 1004
    :catch_e1a
    move-exception v0

    move-object v2, v0

    goto :goto_e65

    .line 992
    :cond_e1d
    :goto_e1d
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7b

    .line 993
    const-string v2, "Set PROP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.action.CDA_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .local v2, "BRIntent":Landroid/content/Intent;
    const-string v3, "com.sec.action.CDA_VALUE"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 998
    const-string v3, "com.samsung.android.app.telephonyui"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    iget-object v3, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1002
    const-string/jumbo v3, "security.cdafinish"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4d
    .catch Ljava/lang/Exception; {:try_start_e10 .. :try_end_e4d} :catch_e1a
    .catch Ljava/lang/Error; {:try_start_e10 .. :try_end_e4d} :catch_e17

    goto :goto_e7b

    .line 1007
    .local v2, "e":Ljava/lang/Error;
    :goto_e4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Error "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7c

    .line 1005
    .local v2, "e":Ljava/lang/Exception;
    :goto_e65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e7b
    :goto_e7b
    nop

    .line 1009
    :goto_e7c
    return-void

    nop

    :array_e7e
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_e8a
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e92
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e9a
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_ea2
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method
