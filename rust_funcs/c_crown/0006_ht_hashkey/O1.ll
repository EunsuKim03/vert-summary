; ModuleID = '0006_ht_hashkey_emit.44b672572a78f401-cgu.0'
source_filename = "0006_ht_hashkey_emit.44b672572a78f401-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define noundef i64 @hash_key(ptr noalias noundef nonnull readonly align 1 captures(none) %key.0, i64 noundef %key.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %left.i.i = and i64 %key.1, 7
  %_25.i.i = and i64 %key.1, -8
  %_2345.i.i.not = icmp eq i64 %_25.i.i, 0
  br i1 %_2345.i.i.not, label %bb11.i.i, label %bb9.i.i

bb11.i.i:                                         ; preds = %bb9.i.i, %start
  %hasher.sroa.26.1 = phi i64 [ 8387220255154660723, %start ], [ %17, %bb9.i.i ]
  %hasher.sroa.19.1 = phi i64 [ 7237128888997146477, %start ], [ %15, %bb9.i.i ]
  %hasher.sroa.11.1 = phi i64 [ 7816392313619706465, %start ], [ %18, %bb9.i.i ]
  %hasher.sroa.0.1 = phi i64 [ 8317987319222330741, %start ], [ %19, %bb9.i.i ]
  %needed.sroa.0.1.lcssa.i.i = phi i64 [ 0, %start ], [ %20, %bb9.i.i ]
  %_5.i10.i.i = icmp samesign ugt i64 %left.i.i, 3
  br i1 %_5.i10.i.i, label %bb1.i33.i.i, label %bb3.i11.i.i

bb1.i33.i.i:                                      ; preds = %bb11.i.i
  %src.i.i.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %needed.sroa.0.1.lcssa.i.i
  %data.sroa.0.0.copyload.i34.i.i = load i32, ptr %src.i.i.i, align 1, !alias.scope !3, !noalias !10
  %0 = zext i32 %data.sroa.0.0.copyload.i34.i.i to i64
  br label %bb3.i11.i.i

bb3.i11.i.i:                                      ; preds = %bb1.i33.i.i, %bb11.i.i
  %i.sroa.0.0.i12.i.i = phi i64 [ 4, %bb1.i33.i.i ], [ 0, %bb11.i.i ]
  %out.sroa.0.0.i13.i.i = phi i64 [ %0, %bb1.i33.i.i ], [ 0, %bb11.i.i ]
  %_17.i14.i.i = or disjoint i64 %i.sroa.0.0.i12.i.i, 1
  %_16.i15.i.i = icmp samesign ult i64 %_17.i14.i.i, %left.i.i
  br i1 %_16.i15.i.i, label %bb4.i27.i.i, label %bb6.i16.i.i

bb4.i27.i.i:                                      ; preds = %bb3.i11.i.i
  %1 = getelementptr i8, ptr %key.0, i64 %needed.sroa.0.1.lcssa.i.i
  %src4.i28.i.i = getelementptr i8, ptr %1, i64 %i.sroa.0.0.i12.i.i
  %data2.sroa.0.0.copyload.i29.i.i = load i16, ptr %src4.i28.i.i, align 1, !alias.scope !3, !noalias !10
  %_20.i30.i.i = zext i16 %data2.sroa.0.0.copyload.i29.i.i to i64
  %_29.i31.i.i = shl nuw nsw i64 %i.sroa.0.0.i12.i.i, 3
  %_19.i32.i.i = shl nuw nsw i64 %_20.i30.i.i, %_29.i31.i.i
  %2 = or i64 %_19.i32.i.i, %out.sroa.0.0.i13.i.i
  %3 = or disjoint i64 %i.sroa.0.0.i12.i.i, 2
  br label %bb6.i16.i.i

bb6.i16.i.i:                                      ; preds = %bb4.i27.i.i, %bb3.i11.i.i
  %i.sroa.0.1.i17.i.i = phi i64 [ %3, %bb4.i27.i.i ], [ %i.sroa.0.0.i12.i.i, %bb3.i11.i.i ]
  %out.sroa.0.1.i18.i.i = phi i64 [ %2, %bb4.i27.i.i ], [ %out.sroa.0.0.i13.i.i, %bb3.i11.i.i ]
  %_31.i19.i.i = icmp ult i64 %i.sroa.0.1.i17.i.i, %left.i.i
  br i1 %_31.i19.i.i, label %bb7.i21.i.i, label %"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E.exit"

bb7.i21.i.i:                                      ; preds = %bb6.i16.i.i
  %index.i.i.i = add i64 %i.sroa.0.1.i17.i.i, %needed.sroa.0.1.lcssa.i.i
  %_53.i.i.i = icmp ult i64 %index.i.i.i, %key.1
  tail call void @llvm.assume(i1 %_53.i.i.i)
  %_50.i22.i.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %index.i.i.i
  %_35.i23.i.i = load i8, ptr %_50.i22.i.i, align 1, !alias.scope !3, !noalias !10, !noundef !13
  %_34.i24.i.i = zext i8 %_35.i23.i.i to i64
  %_38.i25.i.i = shl nuw nsw i64 %i.sroa.0.1.i17.i.i, 3
  %_33.i26.i.i = shl nuw nsw i64 %_34.i24.i.i, %_38.i25.i.i
  %4 = or i64 %_33.i26.i.i, %out.sroa.0.1.i18.i.i
  br label %"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E.exit"

bb9.i.i:                                          ; preds = %start, %bb9.i.i
  %5 = phi i64 [ %18, %bb9.i.i ], [ 7816392313619706465, %start ]
  %6 = phi i64 [ %15, %bb9.i.i ], [ 7237128888997146477, %start ]
  %7 = phi i64 [ %17, %bb9.i.i ], [ 8387220255154660723, %start ]
  %needed.sroa.0.147.i.i = phi i64 [ %20, %bb9.i.i ], [ 0, %start ]
  %_19.i434446.i.i = phi i64 [ %19, %bb9.i.i ], [ 8317987319222330741, %start ]
  %src.i.i = getelementptr inbounds nuw i8, ptr %key.0, i64 %needed.sroa.0.147.i.i
  %data.sroa.0.0.copyload.i.i = load i64, ptr %src.i.i, align 1, !alias.scope !14, !noalias !10
  %8 = xor i64 %data.sroa.0.0.copyload.i.i, %7
  %_2.i38.i.i = add i64 %_19.i434446.i.i, %6
  %_5.i41.i.i = add i64 %8, %5
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 13)
  %10 = xor i64 %_2.i38.i.i, %9
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 16)
  %12 = xor i64 %_5.i41.i.i, %11
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i38.i.i, i64 %_2.i38.i.i, i64 32)
  %_16.i42.i.i = add i64 %_5.i41.i.i, %10
  %_19.i43.i.i = add i64 %12, %13
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 17)
  %15 = xor i64 %_16.i42.i.i, %14
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 21)
  %17 = xor i64 %16, %_19.i43.i.i
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i42.i.i, i64 %_16.i42.i.i, i64 32)
  %19 = xor i64 %_19.i43.i.i, %data.sroa.0.0.copyload.i.i
  %20 = add nuw i64 %needed.sroa.0.147.i.i, 8
  %_23.i.i = icmp ult i64 %20, %_25.i.i
  br i1 %_23.i.i, label %bb9.i.i, label %bb11.i.i

"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E.exit": ; preds = %bb6.i16.i.i, %bb7.i21.i.i
  %out.sroa.0.2.i20.i.i = phi i64 [ %4, %bb7.i21.i.i ], [ %out.sroa.0.1.i18.i.i, %bb6.i16.i.i ]
  %_5.i.i = shl i64 %key.1, 56
  %b.i.i = or i64 %out.sroa.0.2.i20.i.i, %_5.i.i
  %21 = xor i64 %b.i.i, %hasher.sroa.26.1
  %_2.i.i.i2 = add i64 %hasher.sroa.0.1, %hasher.sroa.19.1
  %_5.i.i.i3 = add i64 %21, %hasher.sroa.11.1
  %22 = tail call noundef i64 @llvm.fshl.i64(i64 %hasher.sroa.19.1, i64 %hasher.sroa.19.1, i64 13)
  %23 = xor i64 %_2.i.i.i2, %22
  %24 = tail call noundef i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 16)
  %25 = xor i64 %24, %_5.i.i.i3
  %26 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i.i.i2, i64 %_2.i.i.i2, i64 32)
  %_16.i.i.i4 = add i64 %_5.i.i.i3, %23
  %_19.i.i.i5 = add i64 %25, %26
  %27 = tail call noundef i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 17)
  %28 = xor i64 %_16.i.i.i4, %27
  %29 = tail call noundef i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 21)
  %30 = xor i64 %29, %_19.i.i.i5
  %31 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i.i.i4, i64 %_16.i.i.i4, i64 32)
  %32 = xor i64 %_19.i.i.i5, %b.i.i
  %33 = xor i64 %31, 255
  %_2.i3.i.i = add i64 %32, %28
  %_5.i6.i.i = add i64 %30, %33
  %34 = tail call noundef i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 13)
  %35 = xor i64 %_2.i3.i.i, %34
  %36 = tail call noundef i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 16)
  %37 = xor i64 %36, %_5.i6.i.i
  %38 = tail call noundef i64 @llvm.fshl.i64(i64 %_2.i3.i.i, i64 %_2.i3.i.i, i64 32)
  %_16.i7.i.i = add i64 %35, %_5.i6.i.i
  %_19.i8.i.i = add i64 %37, %38
  %39 = tail call noundef i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 17)
  %40 = xor i64 %_16.i7.i.i, %39
  %41 = tail call noundef i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 21)
  %42 = xor i64 %41, %_19.i8.i.i
  %43 = tail call noundef i64 @llvm.fshl.i64(i64 %_16.i7.i.i, i64 %_16.i7.i.i, i64 32)
  %_30.i.i.i = add i64 %40, %_19.i8.i.i
  %_33.i.i.i6 = add i64 %42, %43
  %44 = tail call noundef i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 13)
  %45 = xor i64 %44, %_30.i.i.i
  %46 = tail call noundef i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 16)
  %47 = xor i64 %46, %_33.i.i.i6
  %48 = tail call noundef i64 @llvm.fshl.i64(i64 %_30.i.i.i, i64 %_30.i.i.i, i64 32)
  %_44.i.i.i = add i64 %45, %_33.i.i.i6
  %_47.i.i.i = add i64 %47, %48
  %49 = tail call noundef i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 17)
  %50 = xor i64 %49, %_44.i.i.i
  %51 = tail call noundef i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 21)
  %52 = xor i64 %51, %_47.i.i.i
  %53 = tail call noundef i64 @llvm.fshl.i64(i64 %_44.i.i.i, i64 %_44.i.i.i, i64 32)
  %_58.i.i.i = add i64 %50, %_47.i.i.i
  %_61.i.i.i = add i64 %52, %53
  %54 = tail call noundef i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 13)
  %55 = xor i64 %54, %_58.i.i.i
  %56 = tail call noundef i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 16)
  %57 = xor i64 %56, %_61.i.i.i
  %_72.i.i.i = add i64 %55, %_61.i.i.i
  %58 = tail call noundef i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 17)
  %59 = tail call noundef i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 21)
  %60 = tail call noundef i64 @llvm.fshl.i64(i64 %_72.i.i.i, i64 %_72.i.i.i, i64 32)
  %61 = xor i64 %59, %58
  %62 = xor i64 %61, %60
  %_0.i.i = xor i64 %62, %_72.i.i.i
  ret i64 %_0.i.i
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
!3 = !{!4, !6, !8}
!4 = distinct !{!4, !5, !"_ZN4core4hash3sip9u8to64_le17heca9045b6fad7150E: %buf.0"}
!5 = distinct !{!5, !"_ZN4core4hash3sip9u8to64_le17heca9045b6fad7150E"}
!6 = distinct !{!6, !7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE: %msg.0"}
!7 = distinct !{!7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE"}
!8 = distinct !{!8, !9, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E: %msg.0"}
!9 = distinct !{!9, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E"}
!10 = !{!11, !12}
!11 = distinct !{!11, !7, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h8afc49a8b766663bE: %self"}
!12 = distinct !{!12, !9, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17hcb21281b68c3fbe9E: %self"}
!13 = !{}
!14 = !{!6, !8}
