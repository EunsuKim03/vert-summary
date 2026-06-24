; ModuleID = 'llvm/cpp_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = alloca i32, i64 %6, align 16
  %8 = alloca i32, i64 %6, align 16
  %9 = bitcast i32* %7 to i8*
  %10 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = bitcast i32* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %10, i1 false)
  store i32 0, i32* %7, align 16, !tbaa !12
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  store i32 0, i32* %14, align 4, !tbaa !12
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !14
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 40
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %20, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %19, %1
  %22 = add i64 %12, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 41
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds i32, i32* %8, i64 %23
  store i32 1, i32* %28, align 4, !tbaa !12
  br label %29

29:                                               ; preds = %27, %21
  %30 = icmp sgt i32 %4, 1
  br i1 %30, label %31, label %92

31:                                               ; preds = %29
  %32 = and i64 %3, 4294967295
  %33 = getelementptr inbounds i32, i32* %7, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i64 %32, -1
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %32, 2
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = and i64 %35, -2
  br label %72

40:                                               ; preds = %72, %31
  %41 = phi i32 [ %34, %31 ], [ %87, %72 ]
  %42 = phi i64 [ 1, %31 ], [ %88, %72 ]
  %43 = icmp eq i64 %36, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, i8* %16, i64 %42
  %46 = load i8, i8* %45, align 1, !tbaa !15
  %47 = icmp eq i8 %46, 40
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %41, %48
  %50 = add nuw nsw i64 %42, 1
  %51 = getelementptr inbounds i32, i32* %7, i64 %50
  store i32 %49, i32* %51, align 4, !tbaa !12
  br label %52

52:                                               ; preds = %40, %44
  br i1 %30, label %53, label %92

53:                                               ; preds = %52
  %54 = add i64 %3, 4294967294
  %55 = and i64 %54, 4294967295
  %56 = and i64 %3, 1
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, i8* %16, i64 %55
  %60 = load i8, i8* %59, align 1, !tbaa !15
  %61 = icmp eq i8 %60, 41
  %62 = add nuw nsw i64 %55, 1
  %63 = getelementptr inbounds i32, i32* %8, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !12
  %65 = zext i1 %61 to i32
  %66 = add nsw i32 %64, %65
  %67 = getelementptr inbounds i32, i32* %8, i64 %55
  store i32 %66, i32* %67, align 4
  %68 = add nsw i64 %55, -1
  br label %69

69:                                               ; preds = %58, %53
  %70 = phi i64 [ %55, %53 ], [ %68, %58 ]
  %71 = icmp eq i64 %55, 0
  br i1 %71, label %92, label %96

72:                                               ; preds = %72, %38
  %73 = phi i32 [ %34, %38 ], [ %87, %72 ]
  %74 = phi i64 [ 1, %38 ], [ %88, %72 ]
  %75 = phi i64 [ 0, %38 ], [ %90, %72 ]
  %76 = getelementptr inbounds i8, i8* %16, i64 %74
  %77 = load i8, i8* %76, align 1, !tbaa !15
  %78 = icmp eq i8 %77, 40
  %79 = zext i1 %78 to i32
  %80 = add nsw i32 %73, %79
  %81 = add nuw nsw i64 %74, 1
  %82 = getelementptr inbounds i32, i32* %7, i64 %81
  store i32 %80, i32* %82, align 4, !tbaa !12
  %83 = getelementptr inbounds i8, i8* %16, i64 %81
  %84 = load i8, i8* %83, align 1, !tbaa !15
  %85 = icmp eq i8 %84, 40
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 %80, %86
  %88 = add nuw nsw i64 %74, 2
  %89 = getelementptr inbounds i32, i32* %7, i64 %88
  store i32 %87, i32* %89, align 4, !tbaa !12
  %90 = add i64 %75, 2
  %91 = icmp eq i64 %90, %39
  br i1 %91, label %40, label %72, !llvm.loop !16

92:                                               ; preds = %69, %96, %29, %52
  %93 = getelementptr inbounds i32, i32* %7, i64 %13
  %94 = load i32, i32* %93, align 4, !tbaa !12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %192, label %116

96:                                               ; preds = %69, %96
  %97 = phi i64 [ %114, %96 ], [ %70, %69 ]
  %98 = getelementptr inbounds i8, i8* %16, i64 %97
  %99 = load i8, i8* %98, align 1, !tbaa !15
  %100 = icmp eq i8 %99, 41
  %101 = add nuw nsw i64 %97, 1
  %102 = getelementptr inbounds i32, i32* %8, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !12
  %104 = zext i1 %100 to i32
  %105 = add nsw i32 %103, %104
  %106 = getelementptr inbounds i32, i32* %8, i64 %97
  store i32 %105, i32* %106, align 4
  %107 = add nsw i64 %97, -1
  %108 = getelementptr inbounds i8, i8* %16, i64 %107
  %109 = load i8, i8* %108, align 1, !tbaa !15
  %110 = icmp eq i8 %109, 41
  %111 = zext i1 %110 to i32
  %112 = add nsw i32 %105, %111
  %113 = getelementptr inbounds i32, i32* %8, i64 %107
  store i32 %112, i32* %113, align 4
  %114 = add nsw i64 %97, -2
  %115 = icmp sgt i64 %97, 1
  br i1 %115, label %96, label %92, !llvm.loop !18

116:                                              ; preds = %92
  %117 = load i32, i32* %8, align 16, !tbaa !12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %192, label %119

119:                                              ; preds = %116
  %120 = icmp slt i32 %4, 0
  br i1 %120, label %192, label %121

121:                                              ; preds = %119
  %122 = add i64 %3, 1
  %123 = and i64 %122, 4294967295
  %124 = load i32, i32* %7, align 16, !tbaa !12
  %125 = icmp ne i32 %124, %117
  %126 = sext i1 %125 to i32
  %127 = icmp eq i64 %123, 1
  br i1 %127, label %192, label %128, !llvm.loop !19

128:                                              ; preds = %121
  %129 = add nsw i64 %123, -1
  %130 = add nsw i64 %123, -2
  %131 = and i64 %129, 3
  %132 = icmp ult i64 %130, 3
  br i1 %132, label %173, label %133

133:                                              ; preds = %128
  %134 = and i64 %129, -4
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 1, %133 ], [ %170, %135 ]
  %137 = phi i32 [ %126, %133 ], [ %169, %135 ]
  %138 = phi i64 [ 0, %133 ], [ %171, %135 ]
  %139 = getelementptr inbounds i32, i32* %8, i64 %136
  %140 = load i32, i32* %139, align 4, !tbaa !12
  %141 = getelementptr inbounds i32, i32* %7, i64 %136
  %142 = load i32, i32* %141, align 4, !tbaa !12
  %143 = icmp eq i32 %142, %140
  %144 = trunc i64 %136 to i32
  %145 = select i1 %143, i32 %144, i32 %137
  %146 = add nuw nsw i64 %136, 1
  %147 = getelementptr inbounds i32, i32* %8, i64 %146
  %148 = load i32, i32* %147, align 4, !tbaa !12
  %149 = getelementptr inbounds i32, i32* %7, i64 %146
  %150 = load i32, i32* %149, align 4, !tbaa !12
  %151 = icmp eq i32 %150, %148
  %152 = trunc i64 %146 to i32
  %153 = select i1 %151, i32 %152, i32 %145
  %154 = add nuw nsw i64 %136, 2
  %155 = getelementptr inbounds i32, i32* %8, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !12
  %157 = getelementptr inbounds i32, i32* %7, i64 %154
  %158 = load i32, i32* %157, align 4, !tbaa !12
  %159 = icmp eq i32 %158, %156
  %160 = trunc i64 %154 to i32
  %161 = select i1 %159, i32 %160, i32 %153
  %162 = add nuw nsw i64 %136, 3
  %163 = getelementptr inbounds i32, i32* %8, i64 %162
  %164 = load i32, i32* %163, align 4, !tbaa !12
  %165 = getelementptr inbounds i32, i32* %7, i64 %162
  %166 = load i32, i32* %165, align 4, !tbaa !12
  %167 = icmp eq i32 %166, %164
  %168 = trunc i64 %162 to i32
  %169 = select i1 %167, i32 %168, i32 %161
  %170 = add nuw nsw i64 %136, 4
  %171 = add nuw nsw i64 %138, 4
  %172 = icmp eq i64 %171, %134
  br i1 %172, label %173, label %135, !llvm.loop !19

173:                                              ; preds = %135, %128
  %174 = phi i32 [ undef, %128 ], [ %169, %135 ]
  %175 = phi i64 [ 1, %128 ], [ %170, %135 ]
  %176 = phi i32 [ %126, %128 ], [ %169, %135 ]
  %177 = icmp eq i64 %131, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %173, %178
  %179 = phi i64 [ %189, %178 ], [ %175, %173 ]
  %180 = phi i32 [ %188, %178 ], [ %176, %173 ]
  %181 = phi i64 [ %190, %178 ], [ 0, %173 ]
  %182 = getelementptr inbounds i32, i32* %8, i64 %179
  %183 = load i32, i32* %182, align 4, !tbaa !12
  %184 = getelementptr inbounds i32, i32* %7, i64 %179
  %185 = load i32, i32* %184, align 4, !tbaa !12
  %186 = icmp eq i32 %185, %183
  %187 = trunc i64 %179 to i32
  %188 = select i1 %186, i32 %187, i32 %180
  %189 = add nuw nsw i64 %179, 1
  %190 = add i64 %181, 1
  %191 = icmp eq i64 %190, %131
  br i1 %191, label %192, label %178, !llvm.loop !20

192:                                              ; preds = %173, %178, %121, %119, %116, %92
  %193 = phi i32 [ %4, %92 ], [ 0, %116 ], [ -1, %119 ], [ %126, %121 ], [ %174, %173 ], [ %188, %178 ]
  ret i32 %193
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
