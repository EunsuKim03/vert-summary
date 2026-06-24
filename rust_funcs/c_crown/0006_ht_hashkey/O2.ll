; ModuleID = '0006_ht_hashkey_emit.44b672572a78f401-cgu.0'
source_filename = "0006_ht_hashkey_emit.44b672572a78f401-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef i64 @hash_key(ptr noalias noundef nonnull readonly align 1 captures(none) %key.0, i64 noundef %key.1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb7.i:
  %left.i = and i64 %key.1, 7
  %_25.i = and i64 %key.1, -8
  %_2345.i.not = icmp eq i64 %_25.i, 0
  br i1 %_2345.i.not, label %bb11.i, label %bb9.i

bb11.i:                                           ; preds = %bb9.i, %bb7.i
  %hasher.sroa.20.1 = phi i64 [ 8387220255154660723, %bb7.i ], [ %17, %bb9.i ]
  %hasher.sroa.14.1 = phi i64 [ 7237128888997146477, %bb7.i ], [ %15, %bb9.i ]
  %hasher.sroa.8.1 = phi i64 [ 7816392313619706465, %bb7.i ], [ %18, %bb9.i ]
  %hasher.sroa.0.1 = phi i64 [ 8317987319222330741, %bb7.i ], [ %19, %bb9.i ]
  %needed.sroa.0.1.lcssa.i = phi i64 [ 0, %bb7.i ], [ %20, %bb9.i ]
  %_5.i10.i = icmp samesign ugt i64 %left.i, 3
  br i1 %_5.i10.i, label %bb1.i33.i, label %bb3.i11.i

bb1.i33.i:                                        ; preds = %bb11.i
  %src.i.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %needed.sroa.0.1.lcssa.i
  %data.sroa.0.0.copyload.i34.i = load i32, ptr %src.i.i, align 1, !alias.scope !3, !noalias !8
  %0 = zext i32 %data.sroa.0.0.copyload.i34.i to i64
  br label %bb3.i11.i

bb3.i11.i:                                        ; preds = %bb1.i33.i, %bb11.i
  %i.sroa.0.0.i12.i = phi i64 [ 4, %bb1.i33.i ], [ 0, %bb11.i ]
  %out.sroa.0.0.i13.i = phi i64 [ %0, %bb1.i33.i ], [ 0, %bb11.i ]
  %_17.i14.i = or disjoint i64 %i.sroa.0.0.i12.i, 1
  %_16.i15.i = icmp samesign ult i64 %_17.i14.i, %left.i
  br i1 %_16.i15.i, label %bb4.i27.i, label %bb6.i16.i

bb4.i27.i:                                        ; preds = %bb3.i11.i
  %1 = getelementptr i8, ptr %key.0, i64 %needed.sroa.0.1.lcssa.i
  %src4.i28.i = getelementptr i8, ptr %1, i64 %i.sroa.0.0.i12.i
  %data2.sroa.0.0.copyload.i29.i = load i16, ptr %src4.i28.i, align 1, !alias.scope !3, !noalias !8
  %_20.i30.i = zext i16 %data2.sroa.0.0.copyload.i29.i to i64
  %_29.i31.i = shl nuw nsw i64 %i.sroa.0.0.i12.i, 3
  %_19.i32.i = shl nuw nsw i64 %_20.i30.i, %_29.i31.i
  %2 = or i64 %_19.i32.i, %out.sroa.0.0.i13.i
  %3 = or disjoint i64 %i.sroa.0.0.i12.i, 2
  br label %bb6.i16.i

bb6.i16.i:                                        ; preds = %bb4.i27.i, %bb3.i11.i
  %i.sroa.0.1.i17.i = phi i64 [ %3, %bb4.i27.i ], [ %i.sroa.0.0.i12.i, %bb3.i11.i ]
  %out.sroa.0.1.i18.i = phi i64 [ %2, %bb4.i27.i ], [ %out.sroa.0.0.i13.i, %bb3.i11.i ]
  %_31.i19.i = icmp samesign ult i64 %i.sroa.0.1.i17.i, %left.i
  br i1 %_31.i19.i, label %bb7.i21.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE.exit"

bb7.i21.i:                                        ; preds = %bb6.i16.i
  %index.i.i = add i64 %i.sroa.0.1.i17.i, %needed.sroa.0.1.lcssa.i
  %_53.i.i = icmp ult i64 %index.i.i, %key.1
  tail call void @llvm.assume(i1 %_53.i.i)
  %_50.i22.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %index.i.i
  %_35.i23.i = load i8, ptr %_50.i22.i, align 1, !alias.scope !3, !noalias !8, !noundef !10
  %_34.i24.i = zext i8 %_35.i23.i to i64
  %_38.i25.i = shl nuw nsw i64 %i.sroa.0.1.i17.i, 3
  %_33.i26.i = shl nuw nsw i64 %_34.i24.i, %_38.i25.i
  %4 = or i64 %_33.i26.i, %out.sroa.0.1.i18.i
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE.exit"

bb9.i:                                            ; preds = %bb7.i, %bb9.i
  %5 = phi i64 [ %18, %bb9.i ], [ 7816392313619706465, %bb7.i ]
  %6 = phi i64 [ %15, %bb9.i ], [ 7237128888997146477, %bb7.i ]
  %7 = phi i64 [ %17, %bb9.i ], [ 8387220255154660723, %bb7.i ]
  %needed.sroa.0.147.i = phi i64 [ %20, %bb9.i ], [ 0, %bb7.i ]
  %_19.i434446.i = phi i64 [ %19, %bb9.i ], [ 8317987319222330741, %bb7.i ]
  %src.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %needed.sroa.0.147.i
  %data.sroa.0.0.copyload.i = load i64, ptr %src.i, align 1, !alias.scope !11, !noalias !8
  %8 = xor i64 %data.sroa.0.0.copyload.i, %7
  %_2.i38.i = add i64 %_19.i434446.i, %6
  %_5.i41.i = add i64 %8, %5
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 13)
  %10 = xor i64 %_2.i38.i, %9
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 16)
  %12 = xor i64 %_5.i41.i, %11
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i38.i, i64 %_2.i38.i, i64 32)
  %_16.i42.i = add i64 %_5.i41.i, %10
  %_19.i43.i = add i64 %12, %13
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 17)
  %15 = xor i64 %_16.i42.i, %14
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 21)
  %17 = xor i64 %16, %_19.i43.i
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i42.i, i64 %_16.i42.i, i64 32)
  %19 = xor i64 %_19.i43.i, %data.sroa.0.0.copyload.i
  %20 = add nuw i64 %needed.sroa.0.147.i, 8
  %_23.i = icmp ult i64 %20, %_25.i
  br i1 %_23.i, label %bb9.i, label %bb11.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE.exit": ; preds = %bb6.i16.i, %bb7.i21.i
  %out.sroa.0.2.i20.i = phi i64 [ %4, %bb7.i21.i ], [ %out.sroa.0.1.i18.i, %bb6.i16.i ]
  %_5.i = shl i64 %key.1, 56
  %b.i = or i64 %out.sroa.0.2.i20.i, %_5.i
  %21 = xor i64 %b.i, %hasher.sroa.20.1
  %_2.i.i6 = add i64 %hasher.sroa.0.1, %hasher.sroa.14.1
  %_5.i.i7 = add i64 %21, %hasher.sroa.8.1
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %hasher.sroa.14.1, i64 %hasher.sroa.14.1, i64 13)
  %23 = xor i64 %_2.i.i6, %22
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 16)
  %25 = xor i64 %24, %_5.i.i7
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i6, i64 %_2.i.i6, i64 32)
  %_16.i.i8 = add i64 %_5.i.i7, %23
  %_19.i.i9 = add i64 %25, %26
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 17)
  %28 = xor i64 %_16.i.i8, %27
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 21)
  %30 = xor i64 %29, %_19.i.i9
  %31 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i8, i64 %_16.i.i8, i64 32)
  %32 = xor i64 %_19.i.i9, %b.i
  %33 = xor i64 %31, 255
  %_2.i3.i = add i64 %32, %28
  %_5.i6.i = add i64 %30, %33
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 13)
  %35 = xor i64 %_2.i3.i, %34
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 16)
  %37 = xor i64 %36, %_5.i6.i
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i, i64 %_2.i3.i, i64 32)
  %_16.i7.i = add i64 %35, %_5.i6.i
  %_19.i8.i = add i64 %37, %38
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 17)
  %40 = xor i64 %_16.i7.i, %39
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 21)
  %42 = xor i64 %41, %_19.i8.i
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i, i64 %_16.i7.i, i64 32)
  %_30.i.i = add i64 %40, %_19.i8.i
  %_33.i.i10 = add i64 %42, %43
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 13)
  %45 = xor i64 %44, %_30.i.i
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 16)
  %47 = xor i64 %46, %_33.i.i10
  %48 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i, i64 %_30.i.i, i64 32)
  %_44.i.i = add i64 %45, %_33.i.i10
  %_47.i.i = add i64 %47, %48
  %49 = tail call noundef i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 17)
  %50 = xor i64 %49, %_44.i.i
  %51 = tail call noundef i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 21)
  %52 = xor i64 %51, %_47.i.i
  %53 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i, i64 %_44.i.i, i64 32)
  %_58.i.i = add i64 %50, %_47.i.i
  %_61.i.i = add i64 %52, %53
  %54 = tail call noundef i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 13)
  %55 = xor i64 %54, %_58.i.i
  %56 = tail call noundef i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 16)
  %57 = xor i64 %56, %_61.i.i
  %_72.i.i = add i64 %55, %_61.i.i
  %58 = tail call noundef i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 17)
  %59 = tail call noundef i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 21)
  %60 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i, i64 %_72.i.i, i64 32)
  %61 = xor i64 %59, %58
  %62 = xor i64 %61, %60
  %_0.i = xor i64 %62, %_72.i.i
  ret i64 %_0.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4, !6}
!4 = distinct !{!4, !5, !"_ZN4core4hash3sip9u8to64_le17heca9045b6fad7150E: %buf.0"}
!5 = distinct !{!5, !"_ZN4core4hash3sip9u8to64_le17heca9045b6fad7150E"}
!6 = distinct !{!6, !7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE: %msg.0"}
!7 = distinct !{!7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE: %self"}
!10 = !{}
!11 = !{!6}
